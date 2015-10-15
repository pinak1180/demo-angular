require 'nokogiri'
require 'open-uri'
namespace :bunglows do
	desc "scrape property"
	task :add_document => :environment do



2.upto(52) do |page_num|
  doc = Nokogiri::HTML(open('http://www.realtor.com/realestateandhomes-search/Pasadena_CA/pg-'+page_num.to_s))
  doc.css('div.listed-properties.listings-grid div.row.active a.listing-photo').each do |link|
  p = Properties.new
  p.name =  link.attribute('title').value()
  a  =  link.attribute('href').value()
  p.image_url =  link.elements[0].attribute('src').value()
  doc1 =  Nokogiri::HTML(open('http://www.realtor.com'+a))
  doc1.css('div.row ul.list-data.list-data-alt.span-d.indent-super-alt li.list-sidebyside').each do |detail|
  a = detail.elements[0].text
  if a=="Beds"
   p.beds = detail.elements[1].text
  elsif a == "Baths"
  p.baths = detail.elements[1].text
  elsif a == "House Size"
  p.house_Size = detail.elements[1].text
  elsif a == "Lot Size"
  p.lot_Size = detail.elements[1].text
  elsif a == "Year Built"
  p.year_built = detail.elements[1].text
  elsif a == "Price"
  puts detail.elements[1].text
  p.price = detail.elements[1].text
  elsif a == "Style"
  p.style = detail.elements[1].text
  elsif a == "Property Type"
  p.property_type = detail.elements[1].text
  end
 end
 p.save
end


end
end
end