# mod1project


## Concert Finder 
Concert Finder is a Command Line Interface application that prompts the user for their name and will ask what type of show they would like to see. The goal of the application is to allow the user to find a concert based off their inputs. Once the user responds with the genre they would like to see a list of artists, the venue, and the day they show will be played appears. Our goal is to have that user select from the list of shows presented to determine the address of the venue. The user can then decide if they want to keep searching for additional shows or not. 

## process description 
The welcome method welcomes a user and collects their name. 

The collect_user_info method just collects the user for their preferred music genre and makes sure it it matches 
one of the possible music genres. If the selection is invalid it defaults to Metal music

The set_user instantiates the user as a ticketholder with the collected user_name and user_genre

The select_concert_by_genre method matches the selected genre to all concerts of that genre in the area from the database 

The display_concerts_information method shows the user which concerts that mactch thier genre selection

The user_selection method prompts the user to choose a concert. After the selection it displays the venue and the address of the venue. If the selection is invalid it reccomends the first option and displays the matching venue and address 

The play_again method prompts the user look for another show or leave the application 
if more shows are chosen it restarts the user in the collect_user_info method



