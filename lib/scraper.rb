
class AlbumJoy::Scraper
def get_page
    Nokogiri::HTML(open("https://www.allmusic.com/year-in-review/2020"))
end

def scrape_albums
     self.get_page.css("div.album")
end

def make_objects
    scrape_albums.each do |a|
        AlbumJoy::Album.new_from_index_page(a)
    end
end

end





#albumname: css('h4.italic').text
#artistname: css('h4').first.text
#description: css('p').text
#url: css('a')[0].attributes['href'].value

