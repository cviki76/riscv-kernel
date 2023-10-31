#include "../h/syscall_c.h"
#include "../lib/mem.h"
#include "../lib/console.h"


inline void ecall(uint64 code){
    __asm__ volatile ("mv a0, %0" : : "r" (code));
    __asm__ volatile ("ecall");
}

inline void shiftArgsInRegs(){
        __asm__ volatile ("mv a4, a3");
        __asm__ volatile ("mv a3, a2");
        __asm__ volatile ("mv a2, a1");
        __asm__ volatile ("mv a1, a0");
}

inline uint64 returnVal()
{
    uint64 volatile ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}

int createStackForThread(thread_t* handle,void(*start_routine)(void*),void* arg,void* stack_space){
    shiftArgsInRegs();
    ecall(Cthread_create);
    return returnVal();
}

int thread_create(thread_t* handle,void(*start_routine)(void*),void* arg){
    void *stack = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    if(!stack) return -2;
    return createStackForThread(handle,start_routine,arg,stack);
}

int createStackForThreadNS(thread_t* handle,void(*start_routine)(void*),void* arg,void* stack_space){
    shiftArgsInRegs();
    ecall(Cthread_createNS);
    return returnVal();
}

int thread_createNS(thread_t* handle,void(*start_routine)(void*),void* arg){
    void *stack = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    if(!stack) return -2;
    return createStackForThreadNS(handle,start_routine,arg,stack);
}

int thread_start(thread_t handle){
    if (!handle)
        return -3;
    shiftArgsInRegs();
    ecall(Cthread_start);
    return returnVal();
}

int thread_exit(){
    ecall(Cthread_exit);
    return returnVal();
}

void thread_dispatch(){
    ecall(Cthread_dispatch);
}

int sem_open(sem_t* handle, unsigned init){
    shiftArgsInRegs();
    ecall(Csem_open);
    return returnVal();
}

int sem_close(sem_t handle){
    shiftArgsInRegs();
    ecall(Csem_close);
    return returnVal();
}

int sem_wait(sem_t id){
    shiftArgsInRegs();
    ecall(Csem_wait);
    return returnVal();
}

int sem_signal(sem_t id){
    shiftArgsInRegs();
    ecall(Csem_signal);
    return returnVal();
}

int time_sleep(time_t){
    shiftArgsInRegs();
    ecall(Ctime_sleep);
    return returnVal();
}

void* mem_alloc(size_t size){
    shiftArgsInRegs();
    ecall(Cmem_alloc);
    return (void*)returnVal();
}

int mem_free(void* toFree){
    shiftArgsInRegs();
    ecall(Cmem_free);
    return returnVal();
}

char getc(){
    return __getc();
}

void putc(char c){
    __putc(c);
}