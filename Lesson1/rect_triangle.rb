triangle_sides = []

puts "Введите длину первой стороны треугольника:"
triangle_sides.push(gets.chomp.to_f)

puts "Введите длину второй стороны:"
triangle_sides.push(gets.chomp.to_f)

puts "Введите длину третьей стороны:"
triangle_sides.push(gets.chomp.to_f)

triangle_sides.sort!

hypotenuse = triangle_sides.last

is_rectangular = hypotenuse ** 2 == triangle_sides[0] ** 2 + triangle_sides[1] ** 2

is_isosceles = triangle_sides[0] == triangle_sides[1] || triangle_sides[1] == triangle_sides[2]

is_equilateral = triangle_sides[0] == triangle_sides[1] && triangle_sides[0] == triangle_sides[2]

if is_rectangular && is_isosceles
  puts "Треугольник прямоугольный и равнобедренный."
elsif is_rectangular
  puts "Треугольник прямоугольный."
elsif is_equilateral
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
end
