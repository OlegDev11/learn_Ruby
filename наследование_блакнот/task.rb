require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end
  #переопределяем метод в разных классах
  def read_from_consile
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату, например 12.05.1988"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%y,%m,%d, %h:%m:%s")} \n\r \n\r"

    deadline = "Крайний строк: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
