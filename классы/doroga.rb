require "./bridge.rb"

puts "Похали!"
sleep 1

puts "Внезапно река"
sleep 1
#объект класса это конктетный мост  
bridge = Bridge.new #создание объекта класса, после создания он всегда работает в методе initialaize
sleep 1

if !bridge.is_opened? #если мост не открыт
  bridge.open #на объекте мы вызываем метод, и открываем его
end

sleep 1

puts "Поехали дальше!"

puts bridge.is_opened?.to_s
