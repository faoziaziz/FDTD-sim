/*
    Square-root test.
*/
#include<math.h>
#include<stdio.h>

#define COUNT 23;

int main(){
    float a = 2.0;
    int i;
    for (i=0;i<COUNT; i++){
        a = sqrt(a);
    }
    for (i=0; i<COUNT;i++){
        a = a*a;
    }
    printf("%12g\n", a);
    
    return 0;
}