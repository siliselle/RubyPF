# Циклы
# Инициализируем счетчик
count = 1
while count <= 5 do
  puts count
  count += 1
  sleep 0.5
end
puts "Конец цикла"

# Перебор яиц
# Массив яиц, 0 - значит целое, любое другое значение - битое яйцо
eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]
# Объявляем массив, куда складывать хорошие яйца
good_eggs = []
# Инициализируем счетчик битых яиц
broken_count = 0
# Цикл по всем элементам массива eggs. Тело цикла будет выполнено столько раз,
# сколько элементов в массиве eggs. Каждый раз при выполнении тела цикла будет
# один из элементов массива (начиная с нулевого) будет в переменной item.
for item in eggs do
  if item != 0
    # Если яйцо плохое счетчик плохих увеличивается на 1
    broken_count += 1
  else
    # Если хорошее, яйцо добавляется в другой лоток
    good_eggs << 0
  end
end
# Выводим результаты
puts 'Битых яиц оказалось ' + broken_count.to_s + ' из ' + eggs.size.to_s
puts 'Вот лоток с хорошими яйцами'
puts good_eggs.to_s

# Поиск имени
# задаем пустой массив 
names = []
user_input = nil # записываем в переменную, ввод от пользователя
while user_input != '' do #пока польз-ль не ввел пустую строку, делаем следующее
  user_input = gets.encode('UTF-8').chomp
  names << user_input #заносим в массив
end
# вывод результат
for item in names do #пока значение попадает в массив, выводим
  puts "С нами #{item}"
  sleep 1
  if (item == 'Элис')
    puts 'Элис??? Кто такая Элис?'
    sleep 1
    break
  end
end
puts 'Что это за девочка и где она живет?'
sleep 1
puts 'А вдруг она не курит? А вдруг она не пьёт?'
sleep 1
puts 'А мы с такими рожами возьмем да и припрёмся к Элис... :)'