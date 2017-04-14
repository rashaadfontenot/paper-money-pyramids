require 'nokogiri'
require 'open-uri'
require 'HTTParty'

class NBAscraper
  doc = HTTParty.get("http://www.nba.com/players")
end
