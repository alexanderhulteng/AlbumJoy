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
        puts "Album: " + input.name + "          Artist: " + input.artist + "          Rating: " + input.add_rating + "          Duration: " + input.add_length + "          Release Date: " + input.add_release + "          Genre: " + input.add_genre
        puts''
        puts '------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
        puts''
        puts "Description: " + input.description
        
        puts ''
        puts '------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
        puts ''
        puts "Review: " + input.add_review
        puts ''

    end


    

    def run
        print_albums
        puts '
        
        
        
        
        
        '
        puts "What album do you wanna hear about???"
        
        input = gets.strip
        

        k = AlbumJoy::Album.selected(input.to_i - 1)
        puts '
        
        
        
        
        
        '
        
        print_detailed(k)
        puts '
        
        
        
        
        
        '
        puts "Do you want to hear about another album? Enter Y or N"
        while input != "Y" || input != "N"
        input = gets.strip.upcase
        if input == "Y"
            run
        elsif input == "N"
            puts ""
            puts "Come back anytime!"
            exit
        else
            puts ""
            puts "Invalid input, Enter Y or N"
            
        end
        end


        
        
    end






end




