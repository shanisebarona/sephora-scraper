

class Scraper

  def self.scrape_makeup
    @@browser = Watir::Browser.new(:chrome)
    @@browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    @@browser.divs(class: 'css-ix8km1')
  end

  def self.unmount
    # Close browser
    @@browser.close
  end
end