class Album 
    attr_accessor :name, :position, :artist, :genre, :release_date, :rating

    @@all = []

    def initialize(name=nil, position=nil, artist=nil, rating=nil)
        @name = name
        @position = position
        @artist = artist
        @rating = rating
        @@all << self
      end









end