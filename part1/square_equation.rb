puts "Введите первый коэффициент уравнения (a)"
a = gets.chomp.to_f
puts "Введите первый коэффициент уравнения (b)"
b = gets.chomp.to_f
puts "Введите первый коэффициент уравнения (c)"
c = gets.chomp.to_f

discr = b**2 - 4 * a * c

puts "Дискриминант равен #{discr}"

if discr > 0
  discr_square_root = Math.sqrt(discr)
  x1 = (-b + discr_square_root) / (2 * a)
  x2 = (-b - discr_square_root) / (2 * a)
  puts "Два корня. X1 = #{x1}; X2 = #{x2}"
elsif discr == 0
  x = -b / (2 * a)
  puts "Один корень, X = #{x}"
elsif discr < 0
  puts "Уравнение действительных решений не имеет"
end
