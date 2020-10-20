a = gets.to_i
b = gets.to_i
c = gets.to_i

d = b**2 - 4*a*c

puts "d = #{d}"

if d>0
  d = d**(1/2)
  x1 = (-b + d)/2*a
  x2 = (-b - d)/2*a
  puts "x1 = #{x1}"
  puts "x2 = #{x2}"
elsif d==0
  x = -b/2*a
  puts "x = #{x}"
else
  puts "Корней нет"
end
