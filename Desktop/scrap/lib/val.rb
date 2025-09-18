

require 'rubygems'
require 'nokogiri'
require 'open-uri'

url= "https://lannuaire.service-public.fr/navigation/ile-de-france/mairie"
html = URI.open(url)
doc = Nokogiri::HTML(html)

puts doc.at_xpath('//title').text
puts doc.xpath('//a').length

doc.xpath('//a[contains(@href, "mailto")]')