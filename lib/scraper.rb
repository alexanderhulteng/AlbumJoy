require 'nokogiri'
require 'byebug'
require 'open-uri'



def scraper
    url = "https://www.allmusic.com/year-in-review/2020"
    unparsed_page = open(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    albums = parsed_page.css('div.album')
    
    albums.each do |a|
        album = {
            name: a.css('h4.italic').text.strip,
            artist: a.css('h4').first.text.strip,
            description: a.css('p').text.strip
            url: a.css('a')[0].attributes['href'].value
        }
        byebug
    end
  
end

scraper

#albumname: css('h4.italic').text
#artistname: css('h4').first.text
#description: css('p').text
#url: css('a')[0].attributes['href'].value

