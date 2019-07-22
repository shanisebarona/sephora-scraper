
class SephoraScraper::Scraper

  def self.product_list
    browser = Watir::Browser.new
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")

    products  = browser.divs(class: 'css-1s223mm') #css-dkxsdo #css-ir5tdx
    products.each do |product| 
      # binding.pry
      brand = product.span(class: 'css-ktoumz').text
      name = product.span(class: 'css-pelz90').text
      price = product.span(class: 'css-0').text
      url = product.a(class: 'css-ix8km1').href
      SephoraScraper::Product.new(brand, name, price, url) 
    end
    # binding.pry
  end

  def self.product_description(product) 
    #scraping for product descriptions
    browser.goto(product.url) #go to the product url 
    binding.pry
    product.description = browser.divs(class: 'css-pz80c5') # scrape for 'description' #class="css-pz80c5"
    product.uses = browser.divs(class: 'css-pz80c5') # how to use #class="css-pz80c5"
    product.ingredients = browser.divs(class: 'css-pz80c5') # ingredients # class="css-pz80c5"
    product.about = browser.divs(class: 'css-8pqdh0') # about the brand #class="css-8pqdh0 "
    product.rating = browser.divs(class: 'css-1eqf5yr').text # stars rating #class="css-1eqf5yr" 
  end
  


  def self.unmount
    browser.close
  end

end