require 'nokogiri'
require 'byebug'
require 'open-uri'



def scraper
    url = "https://rateyourmusic.com/charts/"
    unparsed_page = open(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    albums = parsed_page.css('div.topcharts_itembox.chart_item_release')
    
    albums.each do |a|
        album = {
            name: albums.css('div.topcharts_item_title').text.strip,
            artist: albums.css('div.topcharts_item_artist_newmusicpage.topcharts_item_artist').text.strip,
            position: albums.css('div.topcharts_position').text.strip
        }
        byebug
    end
  
end

scraper

#albumname: css('div.topcharts_item_title').text
#artistname: css('div.topcharts_item_artist_newmusicpage.topcharts_item_artist')
#releasedate: css('div.topcharts_item_releasedate')
#genre: css('div.topcharts_item_genres_container')
#position: css('div.topcharts_position')
#rating: css('span.topcharts_stat.topcharts_avg_rating_stat')
