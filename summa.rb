purchases = {}

print "Название = "
name = gets.chomp

while name != "стоп"
  print "Цена \t= "
  price = gets.to_f
  print "Кол-во\t= "
  amount = gets.to_i
  purchases[name] = {"price" => price, "amount" => amount}
  print "Название = "
  name = gets.chomp
end

summa = 0

purchases.each do | name, content |
  itemPrice= content["price"]
  itemAmount = content["amount"]
  priceForProduct = content["price"] * content["amount"]
  puts "#{content["amount"]} #{name} = #{priceForProduct}"
  summa += priceForProduct
end

puts "В сумме: #{summa}"
