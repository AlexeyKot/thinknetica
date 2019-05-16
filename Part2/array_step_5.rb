# frozen_string_literal: true

my_array = [10]

i = my_array.first

while i < 100
  i += 5
  my_array.push(i)
end

puts my_array
