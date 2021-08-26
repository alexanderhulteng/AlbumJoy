require 'nokogiri'
require 'byebug'
require 'open-uri'

def scraper
    url = "https://rateyourmusic.com/charts/"
    unparsed_page = open(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    byebug
end

scraper