#include "test.h"

int main(void)
{
    for (long long i = 0; i < N; i++)
    {
        switch (i % 10)
        {
            case 0:
                zero();
                break;
            case 1:
                one();
                break;
            case 2:
                two();
                break;
            case 3:
                three();
                break;
            case 4:
                four();
                break;
            case 5:
                five();
                break;
            case 6:
                six();
                break;
            case 7:
                seven();
                break;
            case 8:
                eight();
                break;
            case 9:
                nine();
                break;
        }
    }
}