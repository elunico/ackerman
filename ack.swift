#!/usr/bin/xcrun swift
func ack(m: Int, n: Int) -> Int {
    if ( m == 0) {return n + 1}
    else if ( n == 0 ) {return ack(m - 1, n: 1)}
    else {return ack(m - 1, n: ack(m, n: n - 1))}
}

func main() {
    for i in 0..<5 {
        for j in 0..<5 {
            let ans: Int = ack(i, n: j)
            print("The ack of \(i) and \(j) is \(ans)")
            if i == 4 && j == 1 {
                break // Stack limit for Swift
            }
        }
    }
}

main()