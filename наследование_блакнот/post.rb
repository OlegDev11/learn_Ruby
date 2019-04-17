#класс родитель
class Post
   #статический метод который возвращает массив дочерних классов
   def self.post_types
     [Memo, Link, Task]
   end
   #создаёт экземпляр одного из его детей в зависимости какой тип ему передали в качастве параметров 
   def self.create(type_index)
     return post_types[type_index].new
   end

   def initialize
     #поля
     @created_at = Time.now #текущее время, метод now статический метод
     @text = nil
   end

   def read_from_console
   end

   def to_strings
   end

   #для записи в файл
   def save
     file = File.new(file_path, "w:UTF-8")

     for item in to_strings do
       file.puts(item)
     end

     file.close #закрыть файл
   end

   def file_path
     current_path = File.dirname(__FILE__)

     file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

     return current_path + "/" + file_name
   end
end
