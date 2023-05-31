#include "test.h"

int main(void)
{
    int (*array[])() = {
        zero,
        one,
        two,
        three,
        four,
        five,
        six,
        seven,
        eight,
        nine
    };
    for (int i = 0; i < N; i++)
    {
        array[i % 10]();
    }
}