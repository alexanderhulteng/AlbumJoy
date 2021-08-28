class AlbumJoy::CLI

    def call
        AlbumJoy::Scraper.new.make_objects
        puts "Welcome to a year in music 2020!"
        print_albums
        

    end

    def print_albums
        AlbumJoy::Album.all.each_with_index do |a, i|
            puts "#{i+1}. #{a.artist}: #{a.name}"
            puts "About: #{a.description}"
        end
    end






end




