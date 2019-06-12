#Our CLI controller

class SephoraScraper::CLI

    def call
      list_products
      selection
      goodbye
    end

    def list_products
      puts "Today's new beauty arrivals:"
      @beauties = Beauty.today
      @beauties.each.with_index(1) do |beauty, i|
        puts "#{i}. #{beauty.name} - #{beauty.price} - #{beauty.availability}"
      end
    end

    def selection
      input = nil
      while input != "exit"
        puts "Enter the number of the beauty product you'd like more info on. Enter list to return to the beauty list.  (or type exit):"
        input = gets.strip.downcase

        if input.to_i > 0
          puts @beauties[input.to_i-1]
        elsif input == "list"
          puts list_products
        else
          puts "Oops, that was an inccorect selection. Type list or exit."
        end
      end
    end

    def goodbye 
      puts "Bye, check in tomorrow for more beauty arrivals!"
    end



  end 