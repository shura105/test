require 'nokogiri'
require 'net/http'
require 'mysql'

uri= URI('https://www.goodreads.com/search/index.xml?key=VfarPOcGDiIukWdlYCiBUQ&q=Jack%20London')
answer = Net::HTTP.get(uri)
#puts answer
doc = Nokogiri::XML(answer)

my = Mysql.connect('172.17.0.2', 'root', 'mypassword', 'books')

doc.css("work").each do |rez|
  a = rez.at_css("name").text
  b = rez.at_css("title").text
  c = rez.at_css("image_url").text
  stmt = my.prepare('insert into goodreads (author, title, image_url) values (?,?,?)')
  stmt.execute a, b, c
end

my.query("select id, author, title, image_url from goodreads").each do |id, author, title, image_url|
  p id, author, title, image_url
end
