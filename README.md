## Concert Finder 
"Concert Finder" is a Command Line Interface application that prompts the user for their name and will ask what type of show they would like to see. 

The goal of the application is to allow the user to find a concert based off their selection. The user selects a genre of music they would like to see and the application responds with a list of artists the venue the artist is playing at, and the day the show will be played appears. 

At this point the application will prompt the user to select a show from the list. The user will respond with an artist name and the application will then provide the venue name and location. 

The user will be asked if they would like to continue to looks for concert. If the user responds with yes they will be prompted to select a genre of music again if they answer with anything else the app will inform the user to enjoy the show. 

## Behind the Scenes
- The welcome method welcomes a user and collects their name. 

- The collect_user_info method just collects the user for their preferred   music genre and makes sure it it matches 
one of the possible music genres. If the selection is invalid it defaults to Metal music

- The set_user instantiates the user as a ticketholder with the collected user_name and user_genre

- The select_concert_by_genre method matches the selected genre to all concerts of that genre in the area from the database 

- The display_concerts_information method shows the user which concerts that mactch thier genre selection

- The user_selection method prompts the user to choose a concert. After the selection it displays the venue and the address of the venue. If the selection is invalid it reccomends the first option and displays the matching venue and address 

- The play_again method prompts the user look for another show or leave the application 
if more shows are chosen it restarts the user in the collect_user_info method



## Demo Video

https://youtu.be/9qe0_ozkkbM

## Technologies used

- Ruby 2.6.3
- ActiveRecord
- Sinatra/ActiveRecord

## Instructions for app usage

1. In your terminal type git clone git@github.com:austinckohler/mod1project.git

2. Open a text editor and run bundle install

3. Use the command ruby runner.rb in your terminal to start the app.
    - if you have issues starting the app run the command bundle install, then, rake db:migrate, finally rake db:seed. 

## Applications designers and collaborators

    Indiana Danaher: 
    Austin Kohler: https://github.com/austinckohler




