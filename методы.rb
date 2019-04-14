time = Time.now #Выводит текущее время

puts "Текущее время " + time.to_s

#простой метод с параметром
def say_hi(name)
  puts "Hi!, #{name}, How are you?"# #{name} пердать параметр метода куда нужно
end
#вызов метода и параметр
say_hi "Oleg"
say_hi "Vasy"
say_hi "Masha"

#простая программа с использованием матодов, склонение
def sklonenie(number, krokodil, krokodila, krokodilov) #переменные видны только в нутри методов
  ostatok = number % 10

  if (ostatok == 1) #если один то возвращает крокодил
    return krokodil #возвращает методу
  end

  if (ostatok >= 2 && ostatok <= 4) #если больше или равно 2 и меньше или равно 4
    return krokodila
  end

  if (ostatok > 4 || ostatok == 0) #если больше 4 или равно 0
    return krokodilov
  end
end
 #теперь условия работают 

  skolko = ARGV[0].to_i #преобразовываем в число, для ввода числа с клавиатуры

  #в параметры теперь передаём что угодно
  puts "#{skolko} " +
   sklonenie(skolko, "негритёнок", "негритёнка", "негритят") + " " +
   sklonenie(skolko, "пошёл", "пошли", "пошли") + " купаться в море!"
