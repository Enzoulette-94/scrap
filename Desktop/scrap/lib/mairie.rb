require 'rubygems'
require 'nokogiri'
require 'open-uri'

url= "https://lannuaire.service-public.fr/ile-de-france/essonne/8971767f-e50c-4d58-9e69-94e7a489f49a"

html = URI.open(url)
doc = Nokogiri::HTML(html)
puts doc.class

mail = doc.xpath('//*[@id="contentContactEmail"]/span[2]/a/@href').text
puts " mailto count: #{mail}"