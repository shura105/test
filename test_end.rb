require 'nokogiri'
require 'net/http'
uri= URI('https://www.goodreads.com/search/index.xml?key=VfarPOcGDiIukWdlYCiBUQ&q=Jack%20London')
answer = Net::HTTP.get(uri)
#puts answer
doc = Nokogiri::XML(answer)

doc.css("work").each do |rez|
  puts rez.at_css("name").text
  puts rez.at_css("title").text
  puts rez.at_css("image_url").text
  puts "---------------------------------------------------------------------------------------"
end

