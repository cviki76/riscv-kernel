#include "../h/MemoryDesc.hpp"

void insert(MemoryDesc** head, MemoryDesc* toInsert, MemoryStatus status){
    if(toInsert == nullptr) return;

    toInsert->status = status;

    if (*head == nullptr){
        *head = toInsert;
    }
    else if(toInsert < *head){
        toInsert->next = *head;
        (*head)->prev = toInsert;
        *head = toInsert;
    }
    else{
        MemoryDesc* temp= *head;

        while (temp->next != nullptr &&
               toInsert > temp->next)
        temp=temp->next;

        toInsert->next = temp->next;

        if (temp->next != nullptr)
            toInsert->next->prev = toInsert;

        temp->next = toInsert;
        toInsert->prev = temp;
    }
}

void deletee(MemoryDesc **head, MemoryDesc *toDelete){
    if(toDelete == nullptr) return;

    if (*head == nullptr){
        return;
    }

    if(*head == toDelete) {
        *head = (*head)->next;
        toDelete->prev = nullptr;
        toDelete->next = nullptr;
        if (*head != nullptr) {
            (*head)->prev = nullptr;
        }
        return;
    }

    toDelete->prev->next = toDelete->next;
    if(toDelete->next != nullptr)
        toDelete->next->prev = toDelete->prev;

    toDelete->prev = nullptr;
    toDelete->next = nullptr;

}
//void squash(MemoryDesc *free)
//{
//    if (!free || free->status != FREE)
//        return;
//
//    MemoryDesc *next, *curr;
//    curr = (free->prev) ?
//           free->prev :
//           free;
//
//    // ako sledeći slobodni segment postoji, i ako se trenutni segment proteže sve do sledećeg, spoji ih
//    while (curr->next && (((char*)curr + curr->size + MEM_BLOCK_SIZE) >= ((char*)(curr->next)))) {
//        next = curr->next;
//
//        curr->size += MEM_BLOCK_SIZE + next->size;
//        curr->next = curr->next->next;
//        if (curr->next)
//            curr->next->prev = curr;
//    }
//}