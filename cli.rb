require "pry"
require_relative "lib/models/ticket_holder.rb"
# class Cli < ActiveRecord::Base
    def welcome
        puts "Welcome to concert finder!"
    end

    def collect_user_info
        puts "What is your name?"
        user_name = gets.chomp
        puts "What genre of music would you like to see this weekend?"
        puts "country, hip hop, electronic or metal"
        user_genre = gets.chomp
        puts "Thanks #{user_name}! Let's find you a #{user_genre} show this weekend!"
        set_user(user_name, user_genre)
    end 
   
    def set_user(user_name, user_genre)
        ticket_holder.create(user_name, user_genre)
        select_matching_concerts(concerts)
    end 
    binding.pry
    def select_matching_concerts(concerts)
        results = concerts.select do |concert|
            concert.genre == user_genre
        end
    end
    
    def display_matching_concerts
        results.map do |concert|
            puts "There is a #{concert.genre} show at #{concert.venue} this weekend"
        end
    end    
    
    