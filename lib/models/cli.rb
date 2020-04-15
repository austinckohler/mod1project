
class Cli < ActiveRecord::Base
   
   
    def self.welcome
        puts "Welcome to concert finder!"
        print_venues
    end

    def self.print_venues
        Venue.all 

    end

    def self.collect_user_info
        puts "What is your name?"
        user_name = gets.chomp
        puts "What genre of music would you like to see this weekend?"
        puts "country, hip hop, electronic or metal"
        user_genre = gets.chomp
        puts "Thanks #{user_name}! Let's find you a #{user_genre} show this weekend!"
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
            puts "There is a #{concert.genre} show at #{concert.venue_id} this weekend"
        end
    end    
    
end