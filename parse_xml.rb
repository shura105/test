require 'nokogiri'
require 'net/http'
uri= URI('https://www.goodreads.com/search/index.xml?key=VfarPOcGDiIukWdlYCiBUQ&q=Jack%20London')
answer = Net::HTTP.get(uri)
doc = Nokogiri::XML(answer)

  puts doc.at_css("name").text
  puts doc.at_css("title").text
  puts doc.at_css("image_url").text
