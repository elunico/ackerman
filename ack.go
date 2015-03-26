package main;

import "fmt";

func ack(m int, n int) int {
    if m == 0 {
        return n + 1;
    } else if n == 0 {
        return ack(m - 1, 1);
    } else {
        return ack(m - 1, ack(m, n - 1));
    }
}

func main() {
    for i := 0; i < 5; i++ {
        for j := 0; j < 5; j++ {
            if i == 4 && j == 2 {
                break;
            }
            ans := ack(i, j);
            fmt.Printf("The ack of %d and %d is %d\n", i, j, ans);
        }
        if i == 4 {
            break;
        }
    }
}