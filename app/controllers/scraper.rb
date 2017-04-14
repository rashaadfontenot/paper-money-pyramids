require 'nokogiri'
require 'open-uri'

url = 'http://www.nba.com/players'
html = open(url)

@doc = Nokogiri::HTML(open('http://www.nba.com/players'))
@doc.xpath("a title")
puts @doc
