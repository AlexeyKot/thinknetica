# frozen_string_literal: true

fibo = [0, 1]

i = 0

while fibo.last <= 100
  fibo_next = fibo[i] + fibo[i.next]
  fibo << fibo_next
  i += 1
  puts fibo[i]
end
