puts "Как вас зовут?"
name = gets.chomp
puts "А какой у вас рост?"
height = gets.chomp.to_i
perfect_weight = height - 110
if perfect_weight > 0
  puts "#{name}, ваш идеальный вес - #{perfect_weight}кг."
else
  puts "Вес уже оптимальный"
end
