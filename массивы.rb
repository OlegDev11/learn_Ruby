#Создание, вывод массива, обращение к объекам массива
fruits = ["apple", "banana", "orange"] #fruits хранит в себе объект класса Array
puts fruits[0] #обращение к массиву по индексу[0] -> apple
puts fruits[1] #-> banan
puts fruits[2] #-> orange
puts fruits.to_s #вывод всего массива с преобразованием в строку

#Добавление элемента в массив
basket = []

basket << "apple" #аналогично push, только один элемент
basket.push("cherry", "mango") #при помощи push добавляем несколько объектов в массив
basket << "arbuz"

puts basket.to_s

#Удаление элемента из массива
basket.delete("mango")
basket.delete_at(0) # удаление по индексу
puts basket.to_s

#Существует много методов для работы с массивыми
#  https://ru.wikibooks.org/wiki/Ruby/%D0%A1%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D0%B8%D0%BA/Array
