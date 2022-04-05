/**
 * @file queue.c
 * @author Thien K. M. Bui <buik@carleton.edu>
 * @brief
 *
 * Starter file for CS 208 Lab 0: Welcome to C
 * Adapted from lab developed at CMU by R. E. Bryant, 2017-2018
 *
 * This program implements a queue supporting both FIFO and LIFO
 * operations.
 *
 * It uses a singly-linked list to represent the set of queue elements
 *
 * @version 0.1
 * @date 2022-04-04
 *
 * @copyright Copyright (c) 2022 <buik@carleton.edu>
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "harness.h"
#include "queue.h"

/*
  Create empty queue.
  Return NULL if could not allocate space.
*/
Queue *q_new()
{
  Queue *q = malloc(sizeof(Queue));
  // TODO check if malloc returned NULL (this means space could not be allocated)
  if (q == NULL)
  {
    return q;
  }
  q->head = NULL;
  q->tail = NULL;
  q->size = 0;
  return q;
}

/* Free all storage used by queue */
void q_free(Queue *q)
{
  // What if q is NULL?
  if (q == NULL)
  {
    printf("q_free() error: unable to free an unintialized queue\n");
    exit(1);
  }

  // TODO free the queue nodes
  /* You'll want to loop through the list nodes until the next pointer is NULL,
   * starting at the head, freeing each node and its string.
   * Account for an empty list (head is NULL). */

  if (q->head != NULL)
  {
    Node *current = q->head;
    while (current != NULL)
    {
      Node *previous = current;
      current = current->next;
      free(previous->value);
      free(previous);
    }
  }
  // Freeing queue structure itself
  free(q);
}

/*
  Attempt to insert element at head of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_head(Queue *q, char *s)
{
  Node *new_head;
  // What if q is NULL?
  if (q == NULL)
  {
    return false;
  }

  new_head = (Node *)malloc(sizeof(Node)); // allocates space on a the heap for the new node
  // TODO check if malloc returned NULL
  if (new_head == NULL)
  {
    printf("q_insert_head(): unable to allocate space for insertion\n");
    return false;
  }

  // TODO use malloc to allocate space for the value and copy s to value
  // See the C Tutor example linked from page 4 of the writeup!
  // If this second malloc call returns NULL, you need to free newh before returning

  char *new_value = (char *)malloc(strlen(s) + 1);

  if (new_value == NULL)
  {
    printf("q_insert_head(): unable to allocate space for value\n");
    free(new_head);
    return false;
  }

  // copies s into new_value
  strcpy(new_value, s);
  new_head->value = new_value;

  new_head->next = q->head;
  q->head = new_head;
  q->size = q->size + 1;
  // if the list was empty, the tail might also need updating
  return true;
}

/*
  Attempt to insert element at tail of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_tail(Queue *q, char *s)
{
  // TODO implement in similar fashion to q_insert_head
  // if the list was empty, the head might also need updating
  return false;
}

/*
  Attempt to remove element from head of queue.
  Return true if successful.
  Return false if queue is NULL or empty.
  If sp is non-NULL and an element is removed, copy the removed string to sp
  (up to a maximum of bufsize-1 characters, plus a null terminator.)
  The space used by the list element and the string should be freed.
*/
bool q_remove_head(Queue *q, char *sp, long bufsize)
{
  // TODO check if q is NULL or empty
  if (q == NULL || q->head == NULL)
  {
    printf("q_remove_head(): unable to remove from an empty or uninitialized queue\n");
    return false;
  }

  // TODO if sp is not NULL, copy value at the head to sp
  // Use strncpy (http://www.cplusplus.com/reference/cstring/strncpy/)
  // bufsize is the number of characters already allocated for sp
  // Copy over bufsize - 1 characters and manually write a null terminator ('\0')
  // to the last index of sp
  if (sp == NULL)
  {
    printf("q_remove_head(): input string pointer is null\n");
    return false;
  }

  Node *current_head = q->head;

  char *src_str = current_head->value;
  strncpy(sp, src_str, bufsize - 1);
  sp[bufsize - 2] = '\0';

  // update q->head to remove the current head from the queue
  q->head = q->head->next;
  free(current_head->value);
  free(current_head);
  q->size = q->size - 1;
  // if the last list element was removed, the tail might need updating
  return true;
}

/*
  Return number of elements in queue.
  Return 0 if q is NULL or empty
 */
int q_size(Queue *q)
{
  if (q == NULL || q->head == NULL)
  {
    return 0;
  }
  return q->size;
}

/*
  Reverse elements in queue
  No effect if q is NULL or empty
  This function should not allocate or free any list elements
  (e.g., by calling q_insert_head, q_insert_tail, or q_remove_head).
  It should rearrange the existing ones.
 */
void q_reverse(Queue *q)
{
  /* You need to write the code for this function */
}
