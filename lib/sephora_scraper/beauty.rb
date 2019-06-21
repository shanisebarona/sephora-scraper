
class SephoraScraper::Beauty

  attr_accessor :name, :brand, :price, :url

  def self.scrape_sephora
    browser = Watir::Browser.new(:chrome, headless: true)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    
    beauty = self.new
    beauty.brand = browser.span(class: 'css-ktoumz').text
    beauty.name = browser.span(class: 'css-pelz90').text
    beauty.price = browser.span(class: 'css-0').text
    beauty.url = browser.a(class: 'css-ix8km1').href

    beauty
  end
  
  def self.scrape_beauties
    beauties = []
    beauties << self.scrape_sephora
    beauties
    # binding.pry
  end

  def self.today
    self.scrape_beauties
  end

  def self.unmount
    browser.close
  end

end