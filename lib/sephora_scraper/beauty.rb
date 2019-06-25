
class SephoraScraper::Beauty
  attr_accessor :brand, :name, :price, :url
  @@all = [] 

  def initialize(brand, name, price, url)
    @brand = brand
    @name = name
    @price = price
    @url = url 
    save #as obj init, pushed into @@all arr 
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end 
  
end