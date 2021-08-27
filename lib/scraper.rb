require 'nokogiri'
require 'byebug'
require 'open-uri'

def scraper
    url = "https://rateyourmusic.com/charts/"
    unparsed_page = open(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    albums = parsed_page.css('div.topcharts_itembox.chart_item_release')
    byebug
end

scraper

#albumname: css('div.topcharts_item_title').text
#artistname: css('div.topcharts_item_artist_newmusicpage.topcharts_item_artist')
#releasedate: css('div.topcharts_item_releasedate')
