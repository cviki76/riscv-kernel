#ifndef _syscall_c
#define _syscall_c

#include "../lib/hw.h"

enum codes:uint64{
    Cmem_alloc = 0x01,
    Cmem_free = 0x02,
    Cthread_create = 0x11,
    Cthread_createNS = 0x91,
    Cthread_start = 0x92,
    Cthread_exit = 0x12,
    Cthread_dispatch = 0x13,
    Csem_open = 0x21,
    Csem_close = 0x22,
    Csem_wait = 0x23,
    Csem_signal = 0x24,
    Ctime_sleep = 0x31
};

void* mem_alloc (size_t size);
int mem_free (void*);

class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_createNS (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_start(thread_t handle);
int thread_exit();
void thread_dispatch();


class _sem;
typedef _sem* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);

typedef unsigned long time_t;

int time_sleep (time_t);

char getc();
void putc(char);

#endif //_syscall_c