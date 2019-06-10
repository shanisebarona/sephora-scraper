require 'pry'
require 'watir'
require 'nokogiri'
require 'open-uri'
require 'webdrivers'

class Beauty

  attr_accessor :name, :price, :availability, :url

  def self.today
    # Should reutrn a bunch of instances of beauty products
    # puts <<-DOC
    #   1. Vivid Liquid Eyeliner Trio - Fenty Beauty by Rihanna
    #   2. Neon Obsessions Palette - Huda Beauty
    #   DOC

      beauty_1 = Beauty.new
      beauty_1.name = "Vivid Liquid Eyeliner Trio - Fenty Beauty by Rihanna"
      beauty_1.price = "$35.00"
      beauty_1.availability = true
      beauty_1.url = "https://www.sephora.com/product/vivid-liquid-eyeliner-trio-P19487263?icid2=justarrived_us_skugrid_ufe:p19487263:product"

      beauty_2 = Beauty.new
      beauty_2.name = "Neon Obsessions Palette - Huda Beauty"
      beauty_2.price = "$29.00"
      beauty_2.availability = true
      beauty_2.url = "https://www.sephora.com/product/neon-obsessions-eyeshadow-palette-P445732?icid2=justarrived_us_skugrid_ufe:p445732:product"

      [beauty_1, beauty_2]
  end

  def self.scrape_makeup
    browser = Watir::Browser.new(:chrome)
    browser.goto("https://www.sephora.com/beauty/new-beauty-products")
    browser.divs(class: 'css-ix8km1')
  end

end