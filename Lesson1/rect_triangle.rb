triangle_sides = []

puts "Введите длину первой стороны треугольника:"
triangle_sides.push(gets.chomp.to_f)

puts "Введите длину второй стороны:"
triangle_sides.push(gets.chomp.to_f)

puts "Введите длину третьей стороны:"
triangle_sides.push(gets.chomp.to_f)

a, b, h = triangle_sides.sort

is_rectangular = hypotenuse ** 2 == a ** 2 + n ** 2

is_isosceles = a == b || b == h

is_equilateral = a == b && a == h

if is_rectangular && is_isosceles
  puts "Треугольник прямоугольный и равнобедренный."
elsif is_rectangular
  puts "Треугольник прямоугольный."
elsif is_equilateral
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
end
