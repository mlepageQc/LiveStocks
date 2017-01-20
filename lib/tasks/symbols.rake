require 'open-uri'
require 'nokogiri'

namespace :symbols do
  task :retrieve_list do
    symbols = []
    ('a'..'z').to_a.each do |letter|
      doc = Nokogiri::HTML(open("http://eoddata.com/stocklist/NYSE/#{letter}.HTML"))
      doc.css('tr.ro', 'tr.re').each do |tr|
        symbols << tr.css('td').first.text
      end
    end
  end
end
