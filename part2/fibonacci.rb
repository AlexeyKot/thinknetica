# frozen_string_literal: true

fibo = [0, 1]

while fibo.last <= 100
  fibo_next = fibo[-2] + fibo[-1]
  fibo << fibo_next
  i += 1
  puts fibo[-2]
end
