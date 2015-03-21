ack = (m, n) ->
  if m == 0
    n + 1
  else if n == 0
    ack(m - 1, 1)
  else
    ack(m - 1, ack(m, n - 1))

main = ->
  i = 0
  while i < 5
    j = 0
    while j < 5
      if i == 4 and j == 1
        break # Node recursion limit
      answer = ack(i, j)
      sentence = 'The ack of ' + i + ' and ' + j + ' is ' + answer
      console.log sentence
      j++
    i++
  return

main()
