
require 'nokogiri'
require 'open-uri'

url = 'http://www.nba.com/players'
html = open(url)

doc = Nokogiri::HTML(html)

names = doc.css('a').first.attr('title')


puts names
