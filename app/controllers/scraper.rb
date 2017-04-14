URL = 'http://www.nba.com/players'

require 'nokogiri'
require 'open-uri'

Nokogiri::HTML(open(URL)).xpath("//img/@src").each do |src|
  uri = URI.join( URL, src ).to_s # make absolute uri
  File.open(File.basename(uri),'wb'){ |f| f.write(open(uri).read) }
end