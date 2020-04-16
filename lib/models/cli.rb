
class Cli  #shouldn't inherit from active record because its not a table in the database
   
   
    def welcome
        puts "Welcome to concert finder!"
        puts " "
        puts "What is your name?"
        user_name = gets.chomp
        collect_user_info(user_name)
    end

    def collect_user_info(user_name)
        puts "What genre of music would you like to see this weekend?"
        puts "country, hip hop, electronic or metal"
        user_genre = gets.chomp.capitalize
        puts " "

        if user_genre == "Metal"  || user_genre == "Country"  || user_genre == "Electronic" || user_genre == "Hip hop"        
            puts "Thanks #{user_name}! Let's find you a #{user_genre} show this weekend!"
            puts " "
        else  
            puts " "
            puts "No, it should be Metal... From now on you listen to Metal"
            puts " "
            puts " "
            user_genre = "Metal"  
        end
        set_user(user_name, user_genre)
    end 

    def set_user(user_name, user_genre)
        TicketHolder.create(name: user_name, favorite_genre: user_genre)
        select_concerts_by_genre(user_genre, user_name)
    end 
    
    def select_concerts_by_genre(user_genre, user_name)
        results = Concert.select do |concert|
            concert.genre == user_genre
        end
        results
        displays_concert_information(results, user_name)
    end

    def displays_concert_information(results, user_name)
        results.each do |concert|
            venue_name = Venue.all.select do |venue|
                 venue.id == concert.venue_id
            end
            venue1 = venue_name 
            venue1[0].name
            puts "There is a #{concert.artist} show at #{venue1[0].name} this #{concert.day} " 
        end  
        puts " "
        play_again(user_name)
    end

    def play_again(user_name)
            puts "Would you like to look for more concerts?"
            answer = gets.chomp.downcase
            if answer == "yes"
                puts " "
                self.repeat(user_name)
            else
                puts " "
                puts "Enjoy the show!!"
            end
    end
      
    def repeat(user_name)
            collect_user_info(user_name)
    end
end