#!/usr/bin/xcrun swift
func ack(m: Int, n: Int) -> Int {
    if ( m == 0) {return n + 1}
    else if ( n == 0 ) {return ack(m - 1, 1)}
    else {return ack(m - 1, ack(m, n - 1))}
}

func main() {
    for (var i = 0; i < 5; i++) {
        for (var j = 0; j < 5; j++) {
            var ans: Int = ack(i, j)
            println("The ack of \(i) and \(j) is \(ans)")
            if i == 4 && j == 1 {
                break // Stack limit for Swift
            }
        }
    }
}

main()