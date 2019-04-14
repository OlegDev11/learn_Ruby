#перебераем массив (целые яйца 0, остальное битые)
eggs = [0,0,1,5,5,0,0,0,0,8,9,4,3,0,0,2,0,7,7,8,0,9,0,0,4,5,0]

 good_eggs = []
 broken_count = 0

 for item in eggs do
     if(item != 0)         #мы в item загнали всё  0.
         broken_count += 1 #посчитали количество того что неравняется 0
       else
        good_eggs << item  #запушили все нули в пустой массив   good_eggs
     end
 end

  puts eggs.to_s
  puts good_eggs.to_s
  puts broken_count.to_s
