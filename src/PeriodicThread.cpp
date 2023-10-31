#include "../h/syscall_cpp.hpp"

struct ThreadPeriod{
    PeriodicThread *pt;
    time_t period;
};

void PeriodicThread::wrapper(void* arg) {
    ThreadPeriod* threadPeriod = (ThreadPeriod*)arg;
    while(true){
        threadPeriod->pt->periodicActivation();
        time_sleep(threadPeriod->period);
    }
    delete threadPeriod;
}

PeriodicThread::PeriodicThread(time_t period):Thread(PeriodicThread::wrapper,(void*)new ThreadPeriod{this,period}) {
}


