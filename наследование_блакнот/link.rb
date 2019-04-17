class Link < Post

  def initialize
    super #скопировать поля у класса родителя

    @url = '' #добавим ещё одно поле
  end

  def read_from_consile
    puts "Адрес ссыдки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%y,%m,%d, %h:%m:%s")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end
