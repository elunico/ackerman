#include <stdio.h>
#include <stdlib.h>

int ack(int m, int n) {
    if ( m == 0) return n + 1;
    else if ( n == 0 ) return ack(m - 1, 1);
    else return ack(m - 1, ack(m, n - 1));
}

int main (int argc, char const *argv[])
{
    FILE *fi;
    fi = fopen("/Users/thomaspovinelli/Desktop/acks.txt", "w");
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (i == 4 && j == 2) break; // C stack limit
            int ans = ack(i, j);
            fprintf(fi, "The ack of %i and %i is %i\n", i, j, ans);
        }
    }
    fclose(fi);
    return 0;
}