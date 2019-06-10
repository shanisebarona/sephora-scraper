#Our CLI controller

class SephoraScraper::CLI

    def call
      list_products
      selection
      goodbye
    end

    def list_products
      puts "Today's new beauty arrivals:"
      puts <<-DOC
      1. Vivid Liquid Eyeliner Trio - Fenty Beauty by Rihanna
      2. Neon Obsessions Palette - Huda Beauty
      DOC
      @scraper = SephoraScraper::Scraper.today
    end

    def selection
      input = nil
      while input != "exit"
        puts "Enter the number of the beauty product you'd like more info on. Enter list to return to the beauty list.  (or type exit):"
        input = gets.strip.downcase
        case input
        when "1"
          puts "More info on deal 1..."
        when "2"
          puts "More info on deal 2..."
        when "list"
          list_products
        else
          puts "Oops, that was an inccorect selection. Type list or exit."
        end
      end
    end

    def goodbye 
      puts "Bye, check in tomorrow for more beauty arrivals!"
    end



  end 