# # Квест в особняке,персонаж Крис Редфилд
# puts '1 этаж, левое крыло'
# puts 'Добро пожаловать в мир Resident Evil! '
# puts 'Ваш отряд находится в огромном особняке. Входная дверь заперта.
# Перед вами холл. Слева по корридору дверь, от туда только что донеслись выстрелы.
# Какой путь ты выберешь?'
# puts '1. Пойду в сторону двери и открою ее.'
# puts '2. Зайду и осмотрю холл.'

# # Предлагаем игроку ввести варианты и записываем в переменную go
# go = gets.chomp
# puts 'Отряд остается на месте и неодобрительно провожает тебя взглядом.'
# # Меняем линию программы в зависимости от выбора игрока
# # Если игрок выбрал "1. Пойду в сторону двери и открою ее"
# if go == '1'
#   # Выводим в консоль результат действия игрока и предлагаем ему новые варианты
#   puts 'Это столовая, с первого взгляда беспорядка не видно, полумрак. Что ты сделаешь?'
#   puts '1. Зайду осмотреться, вдруг найду что-то полезное!'
#   puts '2. Ну нафиг! Страшно как-то, лучше вернусь к ребятам и буду стоять с ними как истукан!'
#   make = gets.chomp

#   if make == '1'
#     # Если игрок выбрал 1, заканчиваем игру сообщением о проигрыше
#     puts 'Заходишь в столовую. Дверь от сквозняка закрылась. Неожиданно на тебя нападает зомби ' \
#     'и кусает тебя. Конец игры!'
#     exit
#   else
#     # Если игрок выбрал 2, игра продолжится
#     puts 'Закрываешь дверь и возвращаешься к ребятам.'
#   end
# else
#   puts 'Заходишь в холл и слева, рядом с дверью, видишь стол.'
# end

# # Если игра не закончилась командой exit, течение программы после выхода из if
# # продолжится здесь, используем это, чтобы не делять кучу вложенных if-ов
# puts 'На столе лежит лента для печати и печатная машинка.'
# puts 'На машинке можно сохранить игру, но от этого потратится лента. Твой выбор?'
# puts '1. Сохраню игру и продолжу путь.'
# puts '2. Заберу ленту с собой и продолжу без сохранения.'

# choice = gets.chomp
# if choice == '1'
#   puts 'Лента потрачена! Игра сохранена!'
# else
#   lnk_ribbon = 1
#   puts "#{lnk_ribbon} лента в инвентаре!"
# end
# puts 'Осматриваемся... У дальней стены комнаты стоит камин, над ним можно взять эмблему щита, но нам она пока не нужна.' # Реализовать выбор
# comment = 'В Resident Evil очень маленький инвентарь, большая его часть занята жизненно важными вещами,
# а на сюжетные предметы остаётся всего 1 или 2 слота, поэтому предметы берём только тогда, когда они становятся нужны.'

# puts comment
# puts 'Через северо-западную дверь выходим в коридор. Идём налево, за углом встречаем первого зомби. 
# Оружия у нас нет, поэтому...'
# puts '1. Бежим к зомби' 
# puts '2. Бежим обратно в главный холл.'
# choice = gets.chomp
# if choice == '1'
#   puts 'Зомби вами перекусил и вполне доволен! Конец игры!'
#   exit
# else
#   puts 'В холле уже никого нет, но на полу остался пистолет, подбираем его.'
#   gun = 1
#   puts "#{gun} пистолет в инвентаре!"
# end

puts 'Первый этаж, правое крыло'
puts 'Можем зайти в комнату справа, но на ней кодовый замок'
puts 'Подбираем код'
codus = gets.chomp.to_i
cod = rand(10..20) # в финале увеличить значение до 100
until cod == codus do
  puts 'Неправильный ввод, попробуй еще раз!'
  codus = gets.chomp.to_i
end
puts 'Ура! Замок открылся!'
