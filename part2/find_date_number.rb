# frozen_string_literal: true

months = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

puts 'Введите день'
day = gets.chomp.to_i

puts 'Введите месяц'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

day_number = 0

def leap?(year)
  if (year % 4).zero? && (year % 100 != 0)
    true
  elsif (year % 400).zero?
    true
  else
    false
  end
end

months[2] = 29 if leap?(year)

(1..month).each do |i|
  if i != month
    day_number += months[i]
  else
    day_number += day
  end
end

puts day_number
