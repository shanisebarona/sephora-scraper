
class SephoraScraper::Product
  attr_accessor :brand, :name, :price, :url
  @@all = [] 

  def initialize(brand, name, price, url)
    @brand = brand
    @name = name
    @price = price
    @url = url 
    save #as obj init, pushed into @@all arr 
  end

  def self.all 
    SephoraScraper::Scraper.product_list if @@all.empty?
    @@all
  end

  def save
    @@all << self
  end 
  
end