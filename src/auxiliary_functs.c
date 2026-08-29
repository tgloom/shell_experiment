#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include "./auxiliary_functs.h"
#define buff_size 256

int IsEndWord(char c)
{
    return (c == ' ' || c == '\n');
}
char* GetWord()
{
    if (counter == buff_size) exit(-1);
    char *output_str = input_ptr;
    while ( !IsEndWord(*input_ptr) && counter != buff_size) 
    {
        ++input_ptr;
        ++counter;
    }
    ++input_ptr; // What happens if I'm at the end of the str? ç
    ++counter;
    return output_str;
}