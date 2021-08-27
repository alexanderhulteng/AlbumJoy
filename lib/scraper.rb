require 'nokogiri'
require 'byebug'
require 'open-uri'



def scraper
    url = "https://www.allmusic.com/year-in-review/2020"
    unparsed_page = open(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    albums = parsed_page.css('div.album')
    
    albums.each_with_index do |a, i|
        album = {
            name: albums.css('h4.italic').text.strip,
            artist: albums.css('h4').first.text.strip,
            description: albums.css('p').text.strip
        }
        byebug
    end
  
end

scraper

#albumname: css('h4.italic').text
#artistname: css('h4').first.text
#description: css('p').text

