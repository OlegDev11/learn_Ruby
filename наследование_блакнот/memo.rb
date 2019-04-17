class Memo < Post
  #абстрактные методы(они переопределяются в разных классах)
  def read_from_consile
    puts "Новая заметка (всё, что пишете до строчки \end\):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line #стороки пушим в массив
    end

    @text.pop #удаляем последнюю строку из массива
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%y,%m,%d, %h:%m:%s")} \n\r \n\r"

    return  @text#unshift(time_string) добавление в начало массива строчку
  end
end
