# task 1
man = ['Gena', 'George', 'Misha']
puts man.to_s
woman = ['Katrin', 'Liza', 'Masha']
puts woman.to_s
mawo = man + woman
puts mawo.to_s

# task 2
num1 = [1, 2, 3, 4, 5]
puts num1.to_s + 'Orig arr'
puts num1.reverse.to_s + 'Orig and metod reverse'
puts num1.to_s + 'Orig arr no reverse'
num1.reverse!
puts num1.to_s + 'New arr'

# task 3
# Автосалон
# Выбор машины из массива
# Объявите в программе массив из марок автомобилей (всего около 10).
# Выведите на экран размер этого массива (но не сам массив) и
# спросите у пользователя одно число — номер марки автомобиля, который он хочет получить в подарок.
# Выведите ему ту марку автомобиля, номер которой запросил пользователь.
# А если он запросил номер, которого нет (отрицательное число, ноль или больше, чем есть в массиве) —
# сообщите ему, что он ошибся.
#auto = ['BMV', 'Toyota', 'Ferrari', 'Daewoo', 'Lada', 'Ford', 'Hundai', 'Honda', 'Datsun', 'Audi']
auto = %w[BMV Toyota Ferrari Daewoo Lada Ford Hundai Honda Datsun Audi]
puts "Вы можете выбрать 1 из #{auto.size.to_s} машин"
puts 'Введите число'
use = gets.to_i - 1
if use >= 0 && use < auto.size
  puts "Ваше машина #{auto[use]}"
else
  puts 'ошибка ввода'
end
