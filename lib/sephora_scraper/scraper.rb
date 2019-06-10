require 'pry'
require 'watir'
require 'nokogiri'
require 'open-uri'
require 'webdrivers'

class SephoraScraper::Scraper

  def self.today 
    #I should return a bunch of instances of products

  def self.scrape_prodcucts
    browser = Watir::Browser.new(:chrome)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    browser.divs(class: 'css-ix8km1')
  end

end