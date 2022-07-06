require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

list = doc.css(".ingredients-item-name")

list.each do |n|
    puts n.inner_html

end



