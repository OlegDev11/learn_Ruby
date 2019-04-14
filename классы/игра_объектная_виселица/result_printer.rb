class ResultPrinter

    def print_status(game)
        clear
        puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters) # 1.

        puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}" # 2.

        print_viselitsa(game.errors)

        if game.errors >= 7  # 3.
           puts "Вы проиграли :("
        else
              if game.letters.uniq.size == game.good_letters.size # 4.
                  puts "Поздравляем! Вы выиграли!\n\n"
              else
                  puts "У вас осталось попыток: " + (7-game.errors).to_s
              end
         end
     end

     def get_word_for_print(letters, good_letters)
         result = ""

         for letter in letters do
              if good_letters.include? letter
                  result += letter + " "
              else
                  result += "__ "
              end
          end
          return result
     end

     def clear
       system "clear"
     end

     def print_viselitsa(errors)
         case errors
             when 0
               puts "
                     _______
                     |/
                     |
                     |
                     |
                     |
                     |
                     |
                     |
                   __|________
                   |         |
                   "
               when 1
                 puts "
                     _______
                     |/
                     |     ( )
                     |
                     |
                     |
                     |
                     |
                     |
                   __|________
                   |         |
                   "
               when 2
                 puts "
                     _______
                     |/
                     |     ( )
                     |      |
                     |
                     |
                     |
                     |
                     |
                   __|________
                   |         |
                   "
               when 3
                 puts "
                     _______
                     |/
                     |     ( )
                     |      |_
                     |        \\
                     |
                     |
                     |
                     |
                   __|________
                   |         |
                   "
               when 4
                 puts "
                     _______
                     |/
                     |     ( )
                     |     _|_
                     |    /   \\
                     |
                     |
                     |
                     |
                   __|________
                   |         |
                   "
               when 5
                 puts "
                     _______
                     |/
                     |     ( )
                     |     _|_
                     |    / | \\
                     |      |
                     |
                     |
                     |
                   __|________
                   |         |
                   "

               when 6
                 puts "
                     _______
                     |/
                     |     ( )
                     |     _|_
                     |    / | \\
                     |      |
                     |     / \\
                     |    /   \\
                     |
                   __|________
                   |         |
                   "
               when 7
                 puts "
                     _______
                     |/     |
                     |     (_)
                     |     _|_
                     |    / | \\
                     |      |
                     |     / \\
                     |    /   \\
                     |
                   __|________
                   |         |
                   "
          end
    end
end
