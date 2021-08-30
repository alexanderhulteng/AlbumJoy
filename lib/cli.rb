class AlbumJoy::CLI

    def call
        AlbumJoy::Scraper.new.make_objects
        puts "Welcome to a year in music 2020!"
        run
    end

    def print_albums
        AlbumJoy::Album.all.each_with_index do |a, i|
            puts "#{i+1}. #{a.name}"
        end
    end

    def print_detailed(input)
        puts "Album: " + input.name
        puts "Artist: " + input.artist
        puts "Description: " + input.description
        
        puts "Rating: " + input.add_rating
        puts "Duration: " + input.add_length

    end


    

    def run
        print_albums
        puts "What album do you wanna hear about???"
        input = gets.strip

        k = AlbumJoy::Album.selected(input.to_i - 1)
        print_detailed(k)
        
        
    end






end




