# Acts as the environment
# The executable file will require this file and this file requires all 
# other dependencies

require_relative './sephora_scraper/version'
require_relative './sephora_scraper/beauty'
require_relative './sephora_scraper/cli'

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'webdrivers'
require 'watir'