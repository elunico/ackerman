#include <stdio.h>
#include <stdlib.h>

int ack(int m, int n) {
    if ( m == 0) return n + 1;
    else if ( n == 0 ) return ack(m - 1, 1);
    else return ack(m - 1, ack(m, n - 1));
}

int main (int argc, char const *argv[])
{
    FILE *acks;
    acks = fopen("/Users/thomas/Desktop/ackermans.txt", "a");
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (i == 4 && j == 2) break;
            int ans = ack(i, j);
            fprintf(acks, "The ack of %i ", i); fprintf(acks, "and %i ", j); fprintf(acks, "is %i\n", ans);
        }
    }
    return 0;
}