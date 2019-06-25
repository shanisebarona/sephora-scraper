

class SephoraScraper::Scraper

  def self.scrape_sephora
    browser = Watir::Browser.new(:chrome, headless: true)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    binding.pry
    products  = browser.divs(class: 'css-ir5tdx')
    products.each do |product| 
      brand = product.span(class: 'css-ktoumz').text
      name = product.span(class: 'css-pelz90').text
      price = product.span(class: 'css-0').text
      url = product.a(class: 'css-ix8km1').href

      SephoraScraper::Beauty.new(brand, name, price, url)
    end
  end

  def self.scrape_beauties(beauty)
    
  end
  


  def self.unmount
    browser.close
  end

end