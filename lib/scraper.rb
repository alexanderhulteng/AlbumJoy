require 'nokogiri'
require 'byebug'
require 'httparty'

def scraper
    url = https://rateyourmusic.com/charts/
    unparsed_page = HTTparty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
end

scraper