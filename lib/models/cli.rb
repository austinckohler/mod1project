require "tty-prompt"
prompt = TTY::Prompt.new


class Cli < ActiveRecord::Base
   
   
    def self.welcome
        puts "Welcome to concert finder!"
        puts " "
        collect_user_info
    end

    def self.collect_user_info
        puts "What is your name?"
        user_name = gets.chomp
        puts "What genre of music would you like to see this weekend?"
        puts "country, hip hop, electronic or metal"
        user_genre = gets.chomp.capitalize

        if user_genre == "Metal"  || user_genre == "Country"  || user_genre == "Electronic" || user_genre == "Hip hop"        
            puts "Thanks #{user_name}! Let's find you a #{user_genre} show this weekend!"
        else  
            puts " "
            puts "No, it should be Metal... From now on you listen to Metal"
            puts " "
            puts " "
            user_genre = "Metal"  
        end
        set_user(user_name, user_genre)
    end 

    def self.set_user(user_name, user_genre)
        TicketHolder.create(name: user_name, favorite_genre: user_genre)
        select_matching_concerts(user_genre)
    end 
    
    def self.select_matching_concerts(user_genre)
        results = Concert.select do |concert|
            concert.genre == user_genre
        end
        results
        display_matching_concerts(results)
    end

    def self.display_matching_concerts(results)
        results.each do |concert|
            venue_name = Venue.all.select do |venue|
                 venue.id == concert.venue_id
            end
            
            venue1 = venue_name 
            venue1[0].name
            puts "There is a #{concert.artist} show at #{venue1[0].name} this #{concert.day} " 
        
            # selection_for_more_info
            
        end  
        puts " "
        play_again
    end

        def self.play_again
            puts "Would you like to look for more concerts?"
            answer = gets.chomp.downcase
            if answer == "yes"
                puts " "
                self.welcome
            else
                puts " "
                puts "Enjoy the show!!"
            end
        end
      
    

    # def self.selection_for_more_info
    #     puts "Please select a venue for more information"
    #     selection = gets.chomp

    # end 
end