class Album 
    attr_accessor :name, :artist, :genre, :release_date, :rating, :url

    @@all = []

    def initialize(name=nil, position=nil, artist=nil, rating=nil)
        @name = name
        @position = position
        @artist = artist
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
    









end