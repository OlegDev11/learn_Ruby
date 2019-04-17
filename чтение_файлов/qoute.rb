file_path = './text.txt'

puts "Афоризм дня: "

if File.exist?(file_path)
   f = File.new(file_path, 'r:UTF-8')
   lines = f.readlines #разбивает массив на сроки
   f.close #закрываем файл 
   puts lines.sample
else
   puts 'Файл не найден'
end
