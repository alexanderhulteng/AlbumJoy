
class AlbumJoy::Album 
    attr_accessor :name, :artist, :description, :release_date, :rating, :url, :duration, :genre, :review

    @@all = []

    def self.new_from_index_page(a)
        self.new(a.css('h4.italic').text.strip, 
        'https://www.allmusic.com' + a.css('a')[0].attributes['href'].value, 
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
        @rating ||= doc.css('div.allmusic-rating').text.strip
    end

    def add_length
        @duration ||= doc.css('div.duration span').text.strip
    end

    def add_genre
        @genre ||= doc.css('div.genre a').first.text.strip
    end

    def add_review
        @review ||= doc.css('div.text p').text.strip
    end


    def self.selected(input)
        self.all[input]
    end



   
    









end