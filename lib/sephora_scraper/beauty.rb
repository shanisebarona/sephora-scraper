require 'pry'
require 'watir'
require 'nokogiri'
require 'open-uri'
require 'webdrivers'

class Beauty

  attr_accessor :name, :price, :availability, :url

  def self.today
    # Should reutrn a bunch of instances of beauty products
    self.scrape_beauty
  end

  def self.scrape_beauty
    beauties = []
    # Go to Sephora, find the beauties
    # extract the properties
    # instantiate a deal
    # an array of products just scraped that get pushed into [beauties]
    browser = Watir::Browser.new(:chrome)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    binding.pry
    browser.divs(class: 'css-ir5tdx')
    browser.close

  end

end