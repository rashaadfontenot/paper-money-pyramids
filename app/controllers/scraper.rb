require 'open-uri'
require 'nokogiri'

file = File.open('app/assets/nbaplayer.html')
html = Nokogiri::HTML(file)

names = html.xpath('//a/@title')

puts names