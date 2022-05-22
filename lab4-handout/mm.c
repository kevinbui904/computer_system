/*
 * CS 208 Lab 4: Malloc Lab
 *
 * <Thien K. M. Bui buik@carleton.edu>
 *
 * Simple allocator based on implicit free lists, first fit search,
 * and boundary tag coalescing.
 *
 * Each block has header and footer of the form:
 *
 *      63                  4  3  2  1  0
 *      ------------------------------------
 *     | s  s  s  s  ... s  s  0  0  0  a/f |
 *      ------------------------------------
 *
 * where s are the meaningful size bits and a/f is 1
 * if and only if the block is allocated. The list has the following form:
 *
 * begin                                                             end
 * heap                                                             heap
 *  -----------------------------------------------------------------
 * |  pad   | hdr(16:a) | ftr(16:a) | zero or more usr blks | hdr(0:a) |
 *  -----------------------------------------------------------------
 *          |       prologue        |                       | epilogue |
 *          |         block         |                       | block    |
 *
 * The allocated prologue and epilogue blocks are overhead that
 * eliminate edge conditions during coalescing.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>
#include <stdbool.h>

#include "mm.h"
#include "memlib.h"

/* Basic constants and macros */
#define WSIZE 8             /* word size (bytes) */
#define DSIZE 16            /* doubleword size (bytes) */
#define CHUNKSIZE (1 << 12) /* initial heap size (bytes) */
#define OVERHEAD 16         /* overhead of header and footer (bytes) */

/* NOTE: feel free to replace these macros with helper functions and/or
 * add new ones that will be useful for you. Just make sure you think
 * carefully about why these work the way they do
 */

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p) (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = (val))

/* Perform unscaled pointer arithmetic */
#define PADD(p, val) ((char *)(p) + (val))
#define PSUB(p, val) ((char *)(p) - (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0xf)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) (PSUB(bp, WSIZE))
#define FTRP(bp) (PADD(bp, GET_SIZE(HDRP(bp)) - DSIZE))

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) (PADD(bp, GET_SIZE(HDRP(bp))))
#define PREV_BLKP(bp) (PSUB(bp, GET_SIZE((PSUB(bp, DSIZE)))))

/* We'll a way to GET and SET the bytes in the padding before the prologue
    We'll store the pointer to the head of our explicit free list here*/

#define GET_START() ((PSUB(heap_start, DSIZE)))
#define SET_START(bp) (PUT(GET_START(), (size_t)bp))

/* We'll also need macros to get/set the NXT and PREV chunks of a free list node
    These are use to read/write into the payload of a free block, which will store
    the previous and next pointers in the first 16 bytes of the payload
*/
#define GET_NXT_PTR(p) ((size_t *)GET(PADD(p, WSIZE)))
#define GET_PREV_PTR(p) ((size_t *)GET(p))

#define SET_NXT_PTR(p, nxt_ptr) (PUT(PADD(p, WSIZE), nxt_ptr))
#define SET_PREV_PTR(p, prev_ptr) (PUT(p, prev_ptr))

/* Global variables */

// Pointer to first block
static void *heap_start = NULL;

/* Function prototypes for internal helper routines */

static bool check_heap(int lineno);
static void print_heap();
static void print_block(void *bp);
static bool check_block(int lineno, void *bp);
static void *extend_heap(size_t size);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void place(void *bp, size_t asize);
static size_t max(size_t x, size_t y);

/*
 * mm_init -- <What does this function do?>
 * <What are the function's arguments?>
 * <What is the function's return value?>
 * <Are there any preconditions or postconditions?>
 */
int mm_init(void)
{
    /* create the initial empty heap */
    if ((heap_start = mem_sbrk(4 * WSIZE)) == NULL)
        return -1;

    PUT(heap_start, 0);                               /* alignment padding */
    PUT(PADD(heap_start, WSIZE), PACK(OVERHEAD, 1));  /* prologue header */
    PUT(PADD(heap_start, DSIZE), PACK(OVERHEAD, 1));  /* prologue footer */
    PUT(PADD(heap_start, WSIZE + DSIZE), PACK(0, 1)); /* epilogue header */

    heap_start = PADD(heap_start, DSIZE); /* start the heap at the (size 0) payload of the prologue block */

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;

    return 0;
}

/*
 * mm_malloc -- <What does this function do?>
 * <What are the function's arguments?>
 * <What is the function's return value?>
 * <Are there any preconditions or postconditions?>
 */
void *mm_malloc(size_t size)
{
    size_t asize;      /* adjusted block size */
    size_t extendsize; /* amount to extend heap if no fit */
    char *bp;

    /* Ignore spurious requests */
    if (size <= 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)
    {
        asize = DSIZE + OVERHEAD;
    }
    else
    {
        /* Add overhead and then round up to nearest multiple of double-word alignment */
        asize = DSIZE * ((size + (OVERHEAD) + (DSIZE - 1)) / DSIZE);
    }

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL)
    {
        place(bp, asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = max(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;

    place(bp, asize);
    return bp;
}

/*
 * mm_free -- <What does this function do?>
 mark allocated blocks as "free" (e.g. change the header/footer use block to "0")
 * <What are the function's arguments?>
 pointer to the start of an allocated payload
 * <What is the function's return value?>
 nothing
 * <Are there any preconditions or postconditions?>
 precondition: block must have been allocated
 coalese
 */
void mm_free(void *bp)
{
    /*
    TODO:
        find the memory chunk "bp" in our heap and set the allocated bit to 0
        illustration

 * begin                                                                                                                    end
 * heap                              start                                         want                                     heap
 *  -----------------------------------------------------------------------------------------------------------------------------
 * |  pad   | hdr(16:a) | ftr(16:a) |                                              | hdr(32:a) |---| ftr(32:a)|     | hdr(0:a) |
 *  -----------------------------------------------------------------------------------------------------------------------------
 *          |       prologue        |                       | epilogue |
 *          |         block         |                       | block    |

    just  PACK the allocated byte there with 0 instead of 1
    */

    // since PACK require 2 parameter, we grab the size stored in the current header/footer and only change the allocated bit to 0
    // this is the exact same code as "place", just switch out 1 for 0
    PUT(HDRP(bp), PACK(GET_SIZE(HDRP(bp)), 0));
    PUT(FTRP(bp), PACK(GET_SIZE(HDRP(bp)), 0));

    // we add to the start of the free list EVERYTIME we free a block
    SET_START(bp);
    check_heap(208);
}

/* The remaining routines are internal helper routines */

/*
 * place -- Place block of asize bytes at start of free block bp
 *          and <How are you handling splitting?>
 * Takes a pointer to a free block and the size of block to place inside it
 * Returns nothing
 * <Are there any preconditions or postconditions?>
 */
static void place(void *bp, size_t asize)
{

    // need to check how big this available block is, then figure out if we could split it to fit the asize
    // the blocks NEED to be at least 32 bytes

    size_t current_size = GET_SIZE(HDRP(bp));
    if (current_size - asize < 32)
    {
        PUT(HDRP(bp), PACK(GET_SIZE(HDRP(bp)), 1));
        PUT(FTRP(bp), PACK(GET_SIZE(HDRP(bp)), 1));
    }

    else
    {
        // make the allocated block the first parts of the heap, then everything after can just be its own free block

        /*BEFORE
            =============================================================
            ...|hdr (16n:f)|................................|ftr(16n:f)|...
            =============================================================

        AFTER, we should have a block like this
            ===============================================================================================================
            ...|hdr (asize:a)|..............|ftr(asizen:a)|| hdr(current_size-asize:f) | ... |ftr(current_size-asize:f)|...
            ===============================================================================================================
        */

        /*
             Locate the header of bp, then construct out a new header/footer with asize,
             then go to the next block, and give it the "remaining size"
        */

        // allocate the new header and footer
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));

        /*
        Go to the next block
        NOTE: this block is currently NOT a footer NOR header, we're going to need to make it a footer/header
        */

        // this is where BP is after calling NEXT_BLKP
        /*                                              HERE
        ===============================================================================================================
        ...|hdr (asize:a)|..............|ftr(asizen:a)|| ..................................... |ftr(current_size:f)|...
        ===============================================================================================================
        */
        bp = NEXT_BLKP(bp);

        size_t remaining = current_size - asize;
        // need to make this a HEADER block
        PUT(HDRP(bp), PACK(remaining, 0));

        // now calculate the FTR block and pack that with the right info
        // both blocks are still freed
        PUT(FTRP(bp), PACK(remaining, 0));
        check_heap(__LINE__);
    }
}

/*
 * coalesce -- Boundary tag coalescing.
 * Takes a pointer to a free block
 * Return ptr to coalesced block
 * <Are there any preconditions or postconditions?>
 */
static void *coalesce(void *bp)
{

    // we need to get the size of the block that just got freed first
    size_t size = GET_SIZE(HDRP(bp));
    /*
    There are 4 cases to consider here.
    0) Trivial case, previous AND next blocks are allocated
    1) Previous block is freed
    2) Next block is freed
    3) BOTH blocks are freed
    */

    // check if the block to the prev/next of BP is freed

    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));

    // TRIVIAL 0 case
    if (prev_alloc && next_alloc)
    {
        return bp;
    }

    // CASE 1
    /*
    NOTE: need to change BP here because the previous block is added
        e.g. after we pack our bp would be at the "old" header

                                          OLD HDR
        ===============================================================================================================
        ...|hdr (size:f)|........................................|ftr(size:f)|||hdr (16n:a)|..............|ftr(16n:a)||
        ===============================================================================================================
    */
    else if (!prev_alloc && next_alloc)
    {
        size = size + GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    // CASE 2
    /*
    NOTE: FTRP is calculated using the HDRP, so if we change the header to reflect the new size,
        the new FTRP would already be in the correct place.
    */
    else if (prev_alloc && !next_alloc)
    {
        size = size + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }

    // CASE 3
    else
    {
        size = size + GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    return bp;
}

/*
 * find_fit - Find a fit for a block with asize bytes
 */
static void *find_fit(size_t asize)
{
    /* search from the start of the free list to the end */
    for (char *cur_block = heap_start; GET_SIZE(HDRP(cur_block)) > 0; cur_block = NEXT_BLKP(cur_block))
    {
        if (!GET_ALLOC(HDRP(cur_block)) && (asize <= GET_SIZE(HDRP(cur_block))))
            return cur_block;
    }

    return NULL; /* no fit found */
}

/*
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = words * WSIZE;
    if (words % 2 == 1)
        size += WSIZE;
    // printf("extending heap to %zu bytes\n", mem_heapsize());
    if ((long)(bp = mem_sbrk(size)) < 0)
        return NULL;

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* free block header */
    PUT(FTRP(bp), PACK(size, 0));         /* free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* new epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

/*
 * check_heap -- Performs basic heap consistency checks for an implicit free list allocator
 * and prints out all blocks in the heap in memory order.
 * Checks include proper prologue and epilogue, alignment, and matching header and footer
 * Takes a line number (to give the output an identifying tag).
 */
static bool check_heap(int line)
{
    char *bp;

    if ((GET_SIZE(HDRP(heap_start)) != DSIZE) || !GET_ALLOC(HDRP(heap_start)))
    {
        printf("(check_heap at line %d) Error: bad prologue header\n", line);
        return false;
    }

    for (bp = heap_start; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (!check_block(line, bp))
        {
            return false;
        }
    }

    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp))))
    {
        printf("(check_heap at line %d) Error: bad epilogue header\n", line);
        return false;
    }

    return true;
}

/*
 * check_block -- Checks a block for alignment and matching header and footer
 */
static bool check_block(int line, void *bp)
{
    if ((size_t)bp % DSIZE)
    {
        printf("(check_heap at line %d) Error: %p is not double-word aligned\n", line, bp);
        return false;
    }
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
    {
        printf("(check_heap at line %d) Error: header does not match footer\n", line);
        return false;
    }
    return true;
}

/*
 * print_heap -- Prints out the current state of the implicit free list
 */
static void print_heap()
{
    char *bp;

    printf("Heap (%p):\n", heap_start);

    for (bp = heap_start; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        print_block(bp);
    }

    print_block(bp);
}

/*
 * print_block -- Prints out the current state of a block
 */
static void print_block(void *bp)
{
    size_t hsize, halloc, fsize, falloc;

    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));
    fsize = GET_SIZE(FTRP(bp));
    falloc = GET_ALLOC(FTRP(bp));

    if (hsize == 0)
    {
        printf("%p: End of free list\n", bp);
        return;
    }

    printf("%p: header: [%ld:%c] footer: [%ld:%c]\n", bp,
           hsize, (halloc ? 'a' : 'f'),
           fsize, (falloc ? 'a' : 'f'));
}

/*
 * max: returns x if x > y, and y otherwise.
 */
static size_t max(size_t x, size_t y)
{
    return (x > y) ? x : y;
}
