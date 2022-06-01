/**
 * @file proxy.c
 * @author Thien K. M. Bui <buik@carleton.edu>
 *
 * This is a proxy to be used as a middle man between client and tiny.c
 * as part of Lab5 of CS208, Carleton College 2022
 *
 * Known bugs:
 *      When proxy receive an improper request (e.g. the url is "local host : 5000"),
 *          proxy will segfault
 *      When proxy receives a request without a port, proxy will segfault
 *
 *      Responses without body from server will also cause client to wait indefinitely
 *          as proxy does not generate its own response object
 */

#include "csapp.h"

/* suggested entry and cache structs for Part II */
typedef struct cache_entry
{
    char *url;
    char *item;
    struct cache_entry *next;
    size_t size;
} cache_entry_t;

typedef struct
{
    cache_entry_t *head;
    size_t total_size;
} cache_t;

// For Part II: a global variable to point to the in-memory cache
cache_t *cache;

/* print out the contents of the cache */
void cache_print()
{
    cache_entry_t *cur = cache->head;
    printf("current cache: (%zd)\n", cache->total_size);
    while (cur)
    {
        printf("%s (%zd)\n", cur->url, cur->size);
        cur = cur->next;
    }
}

/* initialize the global cache variable (allocate memory and initialize fields) */
void cache_init()
{
    cache = malloc(sizeof(cache_t));
    cache->head = NULL;
    cache->total_size = 0;
}

/* deallocate the entire cache (all the entries and the cache global variable) */
void cache_free()
{
    cache_entry_t *current = cache->head;
    while (current != NULL)
    {
        free(current->url);
        free(current->item);
        free(current);
        current = current->next;
    }
    free(cache);
}

/* search cache for an entry with a matching url
 * return a pointer to the matching entry or NULL if no matching entry is found
 */
cache_entry_t *cache_lookup(char *url)
{
    cache_entry_t *current = cache->head;
    while (current != NULL && strcmp(current->url, url))
    {
        current = current->next;
    }
    return current;
}

/* insert a new entry at the head of the cache */
void cache_insert(char *url, char *item, size_t size)
{
    cache_entry_t *new_entry = malloc(sizeof(cache_entry_t));
    new_entry->url = url;
    new_entry->item = item;
    new_entry->next = cache->head;

    new_entry->size = size;

    cache->head = new_entry;
    cache->total_size = cache->total_size + size;
}

/*
    handle_request()
    This function will analyze the request and then forward it to
    tiny.c. Afterward it will create a cache in memory of the response.
    If url requested has already been cache, handle_request will
    simply return the item stored in memory without connecting to the server.
*/
void *handle_request(void *connfdp)
{
    // configured this way instead of taking in an int pointer because of
    // pthread_create specification.

    int connfd = *(int *)connfdp;

    char buf[MAXLINE], method[MAXLINE], url[MAXLINE], version[MAXLINE], server_buf[MAXLINE];
    char filename[MAXLINE], port[MAXLINE];

    char url_trim[MAXLINE], req_to_server[MAXLINE * 3];

    // rio stands for robust input/output
    rio_t rio;

    /* Bind buffer to connection */
    Rio_readinitb(&rio, connfd);

    // if the request is empty, just return without doing anything
    if (!Rio_readlineb(&rio, buf, MAXLINE))
        return NULL;

    sscanf(buf, "%s %s %s", method, url, version);

    // search cache for previously requested things
    cache_entry_t *found = cache_lookup(url);
    if (found)
    {
        Rio_writen(connfd, found->item, found->size);
        return NULL;
    }

    // parse URL for hostname, port, and filename, then open a socket on that port and hostname
    // trim url
    sscanf(url, "http://%s", url_trim);

    char *temp = strchr(url_trim, '/');
    strncpy(filename, temp, MAXLINE);
    *temp = '\0';

    // extract the port
    temp = strchr(url_trim, ':') + 1;
    // use strcpy here because we JUST added the null terminator beforehand
    strcpy(port, temp);
    *(temp - 1) = '\0';

    // establish connection with tiny
    rio_t rio_server;
    int server_fd = Open_clientfd(url_trim, port);
    Rio_readinitb(&rio_server, server_fd);

    // make new request string
    sprintf(req_to_server, "%s %s %s \r\n\r\n", method, filename, "HTTP/1.0");
    Rio_writen(server_fd, req_to_server, MAXLINE);
    Rio_readlineb(&rio_server, server_buf, MAXLINE);

    char content_length[MAXLINE];
    long item_size = strlen(server_buf);

    // cache_item will be realloc everytime it grows, it'll be slower but
    // utilizes memory better
    char *cache_item = malloc(item_size);
    strcpy(cache_item, server_buf);

    while (strcmp(server_buf, "\r\n"))
    {
        item_size += strlen(server_buf);
        cache_item = realloc(cache_item, item_size);
        strcat(cache_item, server_buf);
        sscanf(server_buf, "Content-length:%s", content_length);
        Rio_writen(connfd, server_buf, strlen(server_buf));
        Rio_readlineb(&rio_server, server_buf, MAXLINE);
    }

    // write the \r\n to the response and cache
    item_size += 2;
    Rio_writen(connfd, server_buf, 2);
    cache_item = realloc(cache_item, item_size);
    strcat(cache_item, server_buf);

    // extend cache to store body
    int bytes_to_read = atoi(content_length);
    cache_item = realloc(cache_item, item_size + bytes_to_read);

    // put start_of_body at the previous item_size + 2 bytes for \r\n (before adding body)
    char *start_of_body = cache_item + item_size;
    item_size += bytes_to_read;

    int bytes_left_to_read = Rio_readnb(&rio_server, server_buf, bytes_to_read);
    while (bytes_left_to_read != 0)
    {
        Rio_writen(connfd, server_buf, bytes_left_to_read);
        memcpy(start_of_body, server_buf, bytes_left_to_read);
        bytes_left_to_read = Rio_readnb(&rio_server, server_buf, bytes_left_to_read);
        start_of_body += (bytes_to_read - bytes_left_to_read);
    }
    char *cached_url = malloc(strlen(url));
    strcpy(cached_url, url);
    cache_insert(cached_url, cache_item, item_size);
    free(connfdp);
    return NULL;
}

int main(int argc, char **argv)
{
    int listenfd, connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;

    pthread_t tid;
    struct sockaddr_storage clientaddr;

    /* Check command line args */
    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    cache_init();
    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        int *connfdp = malloc(sizeof(int));
        *connfdp = connfd;
        Getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE,
                    port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);

        Pthread_create(&tid, NULL, handle_request, connfdp);
    }
}
