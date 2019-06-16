# В программе объявить две численные переменные, разные по значению. 
# Вывести их на экран.
# Затем с помощью оператора if выбрать наибольшее из них и вывести его на экран.
# Если числа равны — программа должна сообщить об этом.

# мое решение
x = 1005000
y = 100500

puts "Даны числа #{x} и #{y}"

if x > y
  puts "Наибольшее число #{x}"
elsif x < y
    puts "Наибольшее число #{y}"
else
  puts "Значения равны!"
end

# учебный вариант
# encoding: utf-8

# Заводим две переменные с числами (одно целое, другое с плавающей точкой)
a = 128.34
b = 71

# Выводим числа на экран
puts a
puts b

# Если первое число (a) больше второго (b), выводим a
if a > b
  puts 'Наибольшее число: ' + a.to_s
end

# Если второе число (b) больше первого (a), выводим b
if b > a
  puts 'Наибольшее число: ' + b.to_s
end

# Если числа равны, так и пишем
if b == a
  puts 'Оба числа равны'
end