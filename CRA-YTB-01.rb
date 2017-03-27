require 'rubygems'
require 'nokogiri'
require 'open-uri'

#generate search URL

print "SEARCH: "
search = gets
i = 0
str = search.split[0]
str1 = "https://www.youtube.com/results?search_query="
while i < (search.split.length) do

    str = "#{str}"+"+#{search.split[i+1]}"

    i+=1
end

n = "#{str1}#{str[0...-1]}"

puts n
