#include <stdio.h>
#include <time.h>

long long fib(int n){
    if(n <= 1) return n;
    return fib(n-1) + fib(n-2);
}

int main(){
    int n = 35;
    long long resultado;
    clock_t inicio, fin;
    double tiempo;

    inicio = clock();
    resultado = fib(n);
    fin = clock();

    tiempo = (double)(fin - inicio)/CLOCKS_PER_SEC;

    printf("C (compilado)\n");
    printf("fib(%d) = %lld\n", n, resultado);
    printf("Tiempo: %f segundos\n", tiempo);

    return 0;
}
