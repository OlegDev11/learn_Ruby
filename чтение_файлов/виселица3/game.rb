class Game
  def initialize(slovo)
    @letters = get_letters(slovo)

    @errors = 0

    @good_letters = []
    @bad_letters =[]

    @status = 0
  end

  def get_letters(slovo)
    if (slovo == nil || slovo == "")
      abort "Вы не ввели слово для игры"
    end
    return slovo.split("")#возвращает в массив слово разбитое на буквы
  end

  # 1. спросить букву с консоли
  # 2. проверить результат
  def ask_next_letter
    puts "\n Введите следующую букву"

    letter = ""

    while letter == "" do #пока польз. неввёл букву
      letter = STDIN.gets.encode("UTF-8").chomp
    end
    # метод для, проверить результат
    next_step(letter)
  end

  #для проверки наличия буквы в заданном слове
  #или среди уже названных букв (массивы @good_leter, @bad_letter)
  def next_step(bukva)
     if @status == -1 || @status == 1
        return
     end

     if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
        return
     end

     if @letters.include?(bukva)

        @good_letters << bukva

         if @good_letters.size == @letters.uniq.size
            @status = 1
         end

      else
          @bad_letters << bukva
          @errors += 1

          if @errors >= 7
              @status = -1
          end
       end
    end

    #добавляем геттеры, котор. дают доступы к значению полей этого класса
    def letters
       @letters #фишка руби(можно возвращать методу без слова return)
    end

    def good_letters
       @good_letters
    end

    def bad_letters
       @bad_letters
    end

    def status
       @status
    end

    def errors
       @errors
    end
end
