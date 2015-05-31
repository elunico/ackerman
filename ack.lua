function ack(m, n)
    if ( m == 0 ) then
        return n + 1
    elseif ( n == 0 ) then
        return ack(m - 1, 1)
    else
        return ack(m - 1, ack(m, n - 1))
    end
end


function main()
    for i=0,5 do
        for j=0,5 do
            ans = ack(i, j)
            io.write("The value of " .. i .. " and " .. j .. " is " .. ans .. "\n")
            if (i == 4 and j == 0) then
                break -- Lua stack limit
            end
        end
        if (i == 4) then
            break
        end
    end
end

main()