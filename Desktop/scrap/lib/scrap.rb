require 'rubygems'
require 'nokogiri'
require 'open-uri'
html = URI.open("https://coinmarketcap.com/all/views/all/")
doc = Nokogiri::HTML(html)


rows = doc.xpath('//table//tbody/tr')

rows.each do |row|
  symbol = row.xpath('./td[3]//text()').text.strip
  price  = row.xpath('./td[5]//text()').text.strip

if symbol.empty? || price.empty?
    puts "DEBUG:"
    puts row.to_html[0,10]   # affiche 200 premiers caractères du <tr>
  end
puts [symbol, price].inspect
end


