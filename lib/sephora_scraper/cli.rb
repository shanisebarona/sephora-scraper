#CLI controller

class SephoraScraper::CLI
  @@blu="\e[1;34m"
  @@white="\e[0m"

    def call 
      puts "#{@@blu}Welcome! Take a look at today's new beauty arrivals:💄#{@@white}"
      get_products
      list_products
      # get_descriptions
      selection
      list_descriptions
      goodbye
    end

    def get_products
      SephoraScraper::Scraper.product_list
      binding.pry
    end

    def list_products 
      SephoraScraper::Product.all.each.with_index(1) do |product, index|
        puts "#{index}. #{product.name} by #{product.brand}."
      end
    end

    # def get_descriptions
    #   SephoraScraper::Scraper.product_description(product)
    # end


  def list_descriptions
    @products.each.with_index(1) do |product, index|
      input = gets.strip
      if input == index
        puts "#{product.name} - #{product.brand}. #{product.price} #{product.description} #{product.uses} #{product.ingredients} #{product.about} #{product.rating}"
      end
    end
  end

    def selection
      input = nil
      puts "Enter the number of the beauty product you'd like more info on. Enter list to return to the beauty list.  (or type exit):"
      input = gets.strip.downcase

      case input 
      when input.to_i > 0 # 1...20.
        #something, maybe a diff method all together
        #puts SephoraScraper::Product.all[input.to_i-1]
      when "list" 
        list_products
      when "exit", "quit"
        goodbye
      else 
        puts "Oops, that was an inccorect selection, please try again."
        selection
      end
    end

    def goodbye 
      puts "Bye, check in tomorrow for more beauty arrivals! 💋 "
    end

  end 