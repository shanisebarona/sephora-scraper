#Our CLI controller

class SephoraScraper::CLI

    def call #things that should only happen once
      puts "Welcome! Take a look at today's new beauty arrivals: 💄"
      get_products #scrapes products 
      list_products
      # get_descriptions
      selection
      list_descriptions
      goodbye
    end

    def get_products
      SephoraScraper::Scraper.scrape_sephora
    end

    def list_products #SS::Beauty.all, iterate over that
      SephoraScraper::Beauty.all.each.with_index(1) do |product, index|
        puts "#{index}. #{product.name} by #{product.brand}."
      end
    end

    def get_descriptions
      # SephoraScraper::Scraper.scrape_beauties()
    end


  def list_descriptions
    SephoraScraper::Beauty.all.each.with_index(1) do |product, index|
      input = gets.strip
      if input == index
        puts "#{product.name} by #{product.brand}. #{product.price} #{product.description} #{product.uses} #{product.ingredients} #{product.about} #{product.rating}"
      end
    end
  end

    def selection
      input = nil
      while input != "exit" 
        puts "Enter the number of the beauty product you'd like more info on. Enter list to return to the beauty list.  (or type exit):"
        input = gets.strip.downcase

        if input.to_i > 0
          puts SephoraScraper::Beauty.all[input.to_i-1]
        elsif input == "list"
          puts list_products
        elsif input != "exit"
          puts "Oops, that was an inccorect selection. Type list or exit."
        end
      end
    end

    def goodbye 
      puts "Bye, check in tomorrow for more beauty arrivals! 💋 "
    end

  end 