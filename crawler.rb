require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "https://pt.wikipedia.org/wiki/Lista_de_asteroides"

page = Nokogiri::HTML(open(PAGE_URL))
   
puts page.css("title")[0].name   # => title
puts page.css("title")[0].text   # => My webpage