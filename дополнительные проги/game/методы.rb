def get_letters
  #делаем проверки на ввод слова
  slovo = ARGV[0]
  #настройки ввода с клавиатуры для пользователя в Windows
  #if (Gem.win_platform? && ARGV[0])
#    slovo = slovo.encode(ARGV[0].encoding, "cp1251").encode("UTF-8")
#  end
   #если пользователь нечего не ввёл
  if (slovo == nil || slovo == "")
    abort "Вы не ввели слово для игры"
  end
  return slovo.split("")#возвращает в массив слово разбитое на буквы
end
#для проверки работы этого метода
#puts get_letters.to_s

#метод для запроса у пользователя буквы(что-бы он ввёл букву)
def get_user_input
  letter = ""

  while letter == "" do #пока польз. неввёл букву
    letter = STDIN.gets.encode("UTF-8").chomp
  end

  return letter
end
                #массивы
def check_result(user_input, letters, bad_letters, good_letters)
   #метод include проверка на ввод буквы
   if (good_letters.include?(user_input) ||
      bad_letters.include?(user_input))
      return 0 # возвращаем ноль в любых других случаях
   end
   #проверяем если буква угадана то пушим её массив с хорошими буквами
   if letters.include? user_input #.include? user_input проверка что вводит польз.
      good_letters << user_input

       #условие когда угадано всё слово, если размер уникальных букв в слове равен размеру букв слова то условие выполняется
       if letters.uniq.size == good_letters.size #uniq.size уникальный размер
          return 1 #1 если правильно
       else
          return 0
       end
    #иначе польз.вводит не верную букву то пушим её в массив с неверными буквами
    else
        bad_letters << user_input
        return -1 # -1 если не правильно
    end
end
#получить слово для печати
def get_word_for_print(letters, good_letters)
    result = ""

    for letter in letters do
         if good_letters.include? letter
             result += letter + " "
         else
             result += "__ "
         end
     end
     return result
end

# 1. выводить загаданное слово (как в поле чудес)
# 2. информацию об щибках и уже названные буквы
# 3. ошибок > 7 - сообщить о поражении
# 4. слово угаданно - сообщить о победе
def print_status(letters, errors, bad_letters, good_letters)
    puts "\nСлово: " + get_word_for_print(letters, good_letters) # 1.

    puts "Ошибки (#{errors}): #{bad_letters.join(", ")}" # 2.

    if errors >= 7  # 3.
       puts "Вы проиграли :("
     else
          if letters.uniq.size == good_letters.size # 4.
              puts "Поздравляем! Вы выиграли!\n\n"
          else
              puts "У вас осталось попыток: " + (7-errors).to_s
          end
     end
end
#метод, который будет чистить экран после введённого слова(загаданного)
def clear
  system "clear"
end
