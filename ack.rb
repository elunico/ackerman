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
        j = 0
        while j < 5 do
            ans = ack(i, j)
            puts "The ack of #{i} and #{j} is #{ans}"
            j += 1
            if i == 4 and j > 0 then # Ruby stack limit
                break
            end
        end
        i += 1
    end
end

main()