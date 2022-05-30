/**
 * @file proxy.c
 * @author Thien K. M. Bui <buik@carleton.edu>
 *
 * REPLACE THIS vvv
 * Describe your proxy server here, noting any known bugs or other points of interest
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
}

/* deallocate the entire cache (all the entries and the cache global variable) */
void cache_free()
{
}

/* search cache for an entry with a matching url
 * return a pointer to the matching entry or NULL if no matching entry is found
 */
cache_entry_t *cache_lookup(char *url)
{
    return NULL;
}

/* insert a new entry at the head of the cache */
void cache_insert(char *url, char *item, size_t size)
{
}

/* Implement this function for Part I
 * For Part III, you may need to change the parameter and return type of handle_request
 */

// send request to server as we read it from client (think echo)
// a request consists of a GET line and zero or more headers
// a blank line indicates the end of the request headers
// remember: line endings/blank lines are "\r\n"

// read the response from the server
// remember: response headers, then a blank line, then the response body
void handle_request(int connfd)
{
    // read and parse request
    // hint: the initial part of the doit function in tiny/tiny.c may be a good starting point

    char buf[MAXLINE], method[MAXLINE], url[MAXLINE], version[MAXLINE], proxy_buf[MAXLINE];
    char filename[MAXLINE], port[MAXLINE];

    char url_trim[MAXLINE];

    // rio stands for robust input/output
    rio_t rio;

    // only to be used within this function
    // rio_t proxy_rio;

    /* Read request line and headers */
    Rio_readinitb(&rio, connfd);

    // if the line is empty, just return without doing anything
    if (!Rio_readlineb(&rio, buf, MAXLINE))
        return;

    printf("%s", proxy_buf);

    sscanf(buf, "%s %s %s", method, url, version);
    // parse url
    // parse URL for hostname, port, and filename, then open a socket on that port and hostname

    // trim url
    sscanf(url, "http://%s", url_trim);
    printf("url_trim: %s\n", url_trim);

    char *temp = strchr(url_trim, '/');
    strncpy(filename, temp, MAXLINE);
    *temp = '\0';
    printf("filename: %s\n", filename);

    // extract the port
    temp = strchr(url_trim, ':') + 1;
    // use strcpy here because we JUST added the null terminator beforehand
    strcpy(port, temp);
    *(temp - 1) = '\0';
    printf("port: %s\n", port);
    printf("host: %s\n", url_trim);

    // establish connection with tiny
    int server_fd = Open_clientfd(url_trim, port);

    // read new fd
    rio_t rio_server;
    Rio_readinitb(&rio_server, server_fd);

    Rio_readlineb(&rio, buf, MAXLINE);
    printf("======================SERVER RESPONSE======================\n");
    while (strcmp(buf, "\r\n"))
    {
        printf("%s", buf);
        Rio_readlineb(&rio, buf, MAXLINE);
    }
    printf("===========================================================\n");
}

int main(int argc, char **argv)
{
    int listenfd, connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    /* Check command line args */
    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE,
                    port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);

        // For Part III, replace this with code that creates and detaches a thread
        // or otherwise handles the request concurrently
        handle_request(connfd);
    }
}
