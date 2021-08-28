class AlbumJoy::CLI

    def call
        AlbumJoy::Scraper.new.make_objects
        puts "Welcome to a year in music 2020!"
        run
    end

    def print_albums
        AlbumJoy::Album.all.each_with_index do |a, i|
            puts "#{i+1}. #{a.artist}: #{a.name}"
            puts "About: #{a.description}"
        end
    end

    def run
        print_albums
        puts "What album do you wanna hear about???"
        input = gets.strip
        puts AlbumJoy::Album.all[input.to_i - 1].name
       
    end






end




