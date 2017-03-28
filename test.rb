# import nokogiri to parse and open-uri to scrape
require 'nokogiri'
require 'open-uri'
# set the URL to scape
url = 'http://www.google.com/search?q=packt'
# create a new Nokogiri HTML object from the scraped URL
doc = Nokogiri::HTML(open(url))
# loop through an array of objects matching a CSS selector
doc.css('h3.r').each do |link|
# print the link text
puts link.content
end
