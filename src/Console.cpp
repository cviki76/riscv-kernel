#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"
char Console::getc() {
    return __getc();
}

void Console::putc(char c){
    __putc(c);
}