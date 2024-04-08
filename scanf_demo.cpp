#include <cstdio>
#include <cstdlib>

using namespace std;

int main()
{
    int my_value;
    char *scan_str = "%d";
    printf("Enter a value: ");
    scanf(scan_str, &my_value);
    printf("You've entered the number %d.\n", my_value);
}