# frozen_string_literal: true

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts 'Введите день'
day = gets.chomp.to_i

puts 'Введите месяц'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

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

day_number = months.take(month - 1).sum + day

puts day_number
