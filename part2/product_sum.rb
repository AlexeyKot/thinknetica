# frozen_string_literal: true

cart = {}

grand_total = 0

loop do
  puts 'Введите название товара или "СТОП"'
  product_name = gets.chomp
  break if product_name.strip.downcase == 'стоп' || product_name.strip.downcase == 'stop'

  puts 'Введите цену за единицу товара'
  price = gets.chomp.to_f

  puts 'Введите количество купленного товара'
  qnt = gets.chomp.to_f

  total = price * qnt

  grand_total += total

  cart[product_name] = {
    price: price,
    qnt: qnt,
    total: total
  }
end

puts cart

puts "Итоговая сумма: #{grand_total}"
