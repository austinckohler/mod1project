
class Cli  #shouldn't inherit from active record because its not a table in the database
   
   $user_name = ""
   $user_genre = ""
    def welcome
        puts "Welcome to concert finder!"
        puts " "
        puts "What is your name?"
        $user_name = gets.chomp
        collect_user_info
    end

    def collect_user_info
        puts "What genre of music would you like to see this weekend?"
        puts "country, hip hop, electronic or metal"
        $user_genre = gets.chomp.capitalize
        puts " "

        if $user_genre == "Metal"  || $user_genre == "Country"  || $user_genre == "Electronic" || $user_genre == "Hip hop"        
            puts "Thanks #{$user_name}! Let's find you a #{$user_genre} show this weekend! \n\n"
        else  
            puts " "
            puts "No, it should be Metal... From now on you listen to Metal \n\n"
            $user_genre = "Metal"  
        end
        set_user
    end 

    def set_user
        TicketHolder.create(name: $user_name, favorite_genre: $user_genre)
        select_concerts_by_genre
    end 
    
    def select_concerts_by_genre
        results = Concert.select do |concert|
            concert.genre == $user_genre
        end
        results
        displays_concert_information(results)
    end

    def displays_concert_information(results)
        results.each do |concert|
            puts "There is a #{concert.artist} show at #{concert.venue.name} this #{concert.day} \n" 
        end  
        puts "\n"
        user_selection(results)
    end

    def user_selection(results)
        puts "#{$user_name.capitalize}, what band would you like to see?\n\n"
        selection = gets.chomp.downcase 
        puts " "
        new_array = results.select do |concert|
            selection == concert.artist.downcase
        end
        if new_array.length > 0
            puts "The #{new_array[0].venue.name} is located at #{new_array[0].venue.location}."
        else
            puts "You should go see #{results[0].artist} at #{results[0].venue.name}"
            puts "That's located at #{results[0].venue.location} \n\n" 
        end
        play_again 
    end



    def play_again
            puts "Would you like to look for more concerts?"
            answer = gets.chomp.downcase
            if answer == "yes"
                puts " "
                self.repeat
            else
                puts " "
                puts "Enjoy the show!!"
            end
    end
      
    def repeat
            collect_user_info
    end
end