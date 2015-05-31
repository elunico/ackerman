from __future__ import print_function
def ack(m, n):
    if ( m == 0 ):
        return n + 1
    elif ( n == 0 ):
        return ack(m - 1, 1)
    else:
        return ack(m - 1, ack(m, n - 1))

def main ():
    for i in range(5):
        for j in range(5):
            if i == 4 and j == 1: # Python Stack limit
                break
            ans = ack(i, j)
            print("The ack of %i and %i is %i" % (i, j, ans))
    return 0

if __name__ == '__main__':
    main()