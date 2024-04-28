#include <cstdio>
#include <cstdlib>
using namespace std;

int main(int argc, char **argv)
{

    unsigned int value1, value2;

    printf("Enter two unsigned integers (separate the integers with a space): ");
    scanf("%u %u", &value1, &value2);

    printf("%u AND %u is %u\n", value1, value2, value1 & value2);
    printf("%u OR %u is %u\n", value1, value2, value1 | value2);
    printf("%u EOR %u is %u\n", value1, value2, value1 ^ value2);
    printf("%u NAND %u is %u\n", value1, value2, ~(value1 & value2));
    printf("%u NOR %u is %u\n", value1, value2, ~(value1 | value2));

    return 0;
}