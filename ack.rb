def ack(m, n)
    if ( m == 0 ) then
        return n + 1
    elsif ( n == 0 ) then
        return ack(m - 1, 1)
    else
        return ack(m - 1, ack(m, n - 1))
    end
end

def main ()
    i = j = 0
    while i < 5 do
        while j < 5 do
            ans = ack(i, j)
            puts "The ack of #{i} and #{j} is #{ans}"
            i += 1
            j += 1
            if (i >= 3 && j >= 3) then # Recursion limit
                break
            end
        end
    end
end

main()