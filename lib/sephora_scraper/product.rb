
class SephoraScraper::Product
  attr_accessor :brand, :name, :price, :url
  @@all = [] 

  def initialize(brand, name, price, url)
    @brand = brand
    @name = name
    @price = price
    @url = url 
    save
  end

  def self.all 
    @@all
  end

  def save
    @@all << self
    #add validation, only save if attr are filled out
  end 
  
end