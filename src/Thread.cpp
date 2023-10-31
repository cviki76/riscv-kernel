#include "../h/syscall_cpp.hpp"

Thread::Thread() {
    thread_createNS(&myHandle, Thread::wrapper, this);
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_createNS(&myHandle, body, arg);
}

int Thread::start(){
    return thread_start(myHandle);
}

Thread::~Thread() {
}

void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t time)
{
    return time_sleep(time);
}

void Thread::wrapper(void *thread)
{
    ((Thread*)thread)->run();
}



