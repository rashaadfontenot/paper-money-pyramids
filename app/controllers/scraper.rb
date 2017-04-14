require 'nokogiri'
require 'open-uri'
require 'HTTParty'
require 'json'

url = 'http://www.nba.com/players'
html = open(url)

doc = Nokogiri::HTML(open('http://www.nba.com/players'))
doc.xpath("//a ")
puts doc
