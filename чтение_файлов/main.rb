#создаём класс файл
#проверить файл, что бы он был найден(существует или нет)
if File.exist?('./text.txt')
    f = File.new('./text.txt', 'r:UTF-8')

    content = f.read #чтение файла

    puts content
else
    puts "Файл не найден"
end
