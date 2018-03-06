require "http"
require "nokogiri"

uri = URI('https://www.goodreads.com/search/index.xml')
params = { :key => "VfarPOcGDiIukWdlYCiBUQ", :q => "Jack London"}
uri.query = URI.encode_www_form(params)

  rez = HTTP.get(uri).body
  puts rez
