print "Введите температуру и шкалу(C or F): "

str = gets
# exit - метод завершает работу программы 
# модификатор if - управляющая конструкция 
# or == ||, но or имеет больший приоритет 
exit if str.nil? or str.empty? 
# удаляем хвостовой символ новой строки 
str.chomp!
temp, scale = str.split(" ")

abort " #{temp} недопустимое число." if temp !~ /~?\d+/
# to_f - метод преобразует строку в число с плавающей точкой
temp = temp.to_f
# case - можно проверять условия, и исп. регулярные выражения 
case scale
	when "C", "c"
		f = 1.8*temp + 32
	when "F", "f"
		c = (5.0/9.0) * (temp - 32)
	else
		abort "Необходимо задать С или F."
	end

if f.nil?
	print "#{c} градусов С\n"
else
	print "#{f} градусов F\n"
end