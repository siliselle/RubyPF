# Поют ли соловьи?
# В городском парке живут соловьи. Однако, их редко слышно, потому что они поют только когда температура на улице от 22 до 30 градусов в любое время года. Летом они поют при температуре от 15 до 35 градусов.
# Напишите программу, которая определяет, поют в данный момент соловьи или нет.
# Текущую температуру и время года программа должна брать из аргументов командной строки. А если их не передали — спрашивать у пользователя.

# Первый аргумент командной строки - температура, второй - время года
temp = ARGV[0]
season = ARGV[1]

# Код для преобразования входного аргумента в кодировку utf-8 на Windows
if Gem.win_platform? && ARGV[0] && Gem.win_platform? && ARGV[1]
  temp = temp.encode('UTF-8')
  season = season.encode('UTF-8')
end

# Если пользователь забыл передать аргумент
user_temp = nil
user_season = nil
while temp == nil && user_temp == nil
  puts 'Введите температуру: '
  user_temp = STDIN.gets.to_i
end
while season == nil && user_season == nil
  puts 'Выберете время года: 1 - Зима, 2 - Весна, 3 - Лето, 4 - Осень'
  user_season = STDIN.gets.to_i
end
# Проверка введеных данных пользователем багоюзность подумать как можно короче и без if-ов
puts "Текущая температура: #{user_temp}"
puts "Время года: #{user_season}" 
if (user_temp >= 15 && user_season == 3) && (user_temp <= 35 && user_season == 3)
  puts 'Сейчас лето!!! Скорее идите в парк, соловьи поют!'
elsif (user_temp >= 22 && user_season != 3) && (user_temp <= 30 && user_season != 3)
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end

####################################################
# if (15..35).to_a.each {|x|
#   if user_temp == x && user_season == 3
#     puts 'Сейчас лето!!! Скорее идите в парк, соловьи поют!'
#   end}

# elsif (22..30).to_a.each {|x|
#   if user_temp == x && user_season != 3
#     puts 'Скорее идите в парк, соловьи поют!'
#   end}
# else
#   puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
# end

# метод препода
# encoding: utf-8

# При запуске программы можно передать два аргумента: температуру в градусах
# Цельсия и индекс времени года (0 - весна, 1 - лето, 2 - осень, 3 - зима).

# Записываем в переменную temperature значение первого параметра. Если он был
# передан, в переменную temperature запишется строка. Если нет — nil.
temperature = ARGV[0]

if temperature == nil
  # Если в переменной temperature у нас оказался nil, значит при запуске в
  # консоли не передали параметр температуры, спрашиваем её у пользователя
  # преобразуем в число и записываем в переменную temperature.
  #
  # Обратите внимание, что если мы используем аргументы из командной строки, то
  # нам надо вызывать не просто gets, а STDIN.gets (особенность языка Ruby).
  puts 'Какая сейчас температура?'
  temperature = STDIN.gets.to_i
else
  # Иначе, просто преобразуем в число методом to_i
  temperature = temperature.to_i
end

# Аналогично поступаем с временем года
season = ARGV[1]

if season == nil
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = STDIN.gets.to_i
else
  season = season.to_i
end

# Осталось проверить все условия и вывести соответствующий текст
if season == 1
  # Летом свой диапазон температур
  if temperature >= 15 && temperature <= 35
    puts 'Скорее идите в парк, соловьи поют!'
  else
    puts 'Увы, даже летом для соловьев сейчас неподходящие условия'
  end
else
  # Любое другое время года
  if temperature >= 22 && temperature <= 30
    puts 'Скорее в парк! Там поют соловьи!'
  else
    puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
  end
end