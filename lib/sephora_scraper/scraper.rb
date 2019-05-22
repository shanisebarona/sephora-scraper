require 'pry'
require 'watir'
require 'nokogiri'
require 'open-uri'
require 'webdrivers'

class Scraper

  def self.scrape_makeup
    browser = Watir::Browser.new(:chrome)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    browser.divs(class: 'css-ix8km1')
  end


end 