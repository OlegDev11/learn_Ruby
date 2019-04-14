#создадим класс (абстрактное понятие мост)
class Bridge
#встроенный метод(конструктор), здесь мы указываем все свойства класса
  def initialize
    puts "мост создан"
    @opened = false #свойство класса(мост открыт, закрыт, сломан, железный и т.д.), поля класса
  end

  def open
    puts "мост открыт, можно ехать"
    @opened = true
  end

  def is_opened?
    return @opened
  end

end
