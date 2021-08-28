require 'pry'
class AlbumJoy::Album 
    attr_accessor :name, :artist, :description, :release_date, :rating, :url

    @@all = []

    def self.new_from_index_page(a)
        self.new(a.css('h4.italic').text.strip, 
        'https://www.allmusic.com/album/' + a.css('a')[0].attributes['href'].value, 
        a.css('h4').first.text.strip, 
        a.css('p').text.strip)
    end
    
    def initialize(name=nil, url=nil, artist=nil, description=nil)
        @name = name
        @url = url
        @artist = artist
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def doc
        @doc ||= Nokogiri::HTML(open(self.url))
    end

    def add_release
        @release ||= doc.css('div.release-date span').text.strip
    end

    def add_rating
        @rating ||= doc.css('div.allmusic-rating.rating-allmusic-7').text.strip
        end



   
    









end