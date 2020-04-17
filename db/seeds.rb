#file we are using to create test data



#user //// no seed data, we will acquire this information through our method collect_user_data  //// maybe we don't even need to save users favorite genre



#concert1 = Concert.create(venue_id, day, artist, genre, price)?


# use gem tyyprompt
# use gem  colorize 


venue1 = Venue.create(name: "Red Rocks", location: "18300 W Alameda Pkwy, Morrison, CO 80465")
venue2 = Venue.create(name: "Cervantes", location: "2637 Welton St, Denver, CO 80205")
venue3 = Venue.create(name: "Ogden Theatre", location: "935 E Colfax Ave, Denver, CO 80218")
venue4 = Venue.create(name: "Oriental Theatre", location: "4335 W 44th Ave, Denver, CO 80212")
venue5 = Venue.create(name: "Bluebird Theatre", location: "3317 E Colfax Ave, Denver, CO 80206")
venue6 = Venue.create(name: "Marquis Theatre", location: "2009 Larimer St, Denver, CO 80205")
venue7 = Venue.create(name: "Ophelia's", location: "1215 20th St, Denver, CO 80202")
venue8 = Venue.create(name: "Filmore Theatre", location: "1510 N Clarkson St, Denver, CO 80218")

concert1 = Concert.create(artist: "Warbringer", genre: "Metal", venue_id: venue1.id, day: "Friday")
concert2 = Concert.create(artist: "Dylan Scott", genre: "Country", venue_id: venue1.id, day: "Saturday")
concert3 = Concert.create(artist: "STS9", genre: "Electronic", venue_id: venue2.id, day: "Friday")
concert4 = Concert.create(artist: "Snoop Dogg", genre: "Hip hop", venue_id: venue2.id, day: "Saturday")
concert5 = Concert.create(artist: "Bassnectar", genre: "Electronic", venue_id: venue3.id, day: "Friday")
concert6 = Concert.create(artist: "Title Fight", genre: "Metal", venue_id: venue3.id, day: "Saturday")
concert7 = Concert.create(artist: "Willie Nelson", genre: "Country", venue_id: venue4.id, day: "Friday")
concert8 = Concert.create(artist: "Merle Haggard", genre: "Country", venue_id: venue4.id, day: "Saturday")
concert9 = Concert.create(artist: "Knocked Loose", genre: "Metal", venue_id: venue5.id, day: "Friday")
concert10 = Concert.create(artist: "Taylor Swift", genre: "Country", venue_id: venue5.id, day: "Saturday")
concert11 = Concert.create(artist: "Gwar", genre: "Metal", venue_id: venue6.id, day: "Friday")
concert12 = Concert.create(artist: "Apex Twin", genre: "Electronic", venue_id: venue6.id, day: "Saturday")
concert13 = Concert.create(artist: "Daft Punk", genre: "Electronic", venue_id: venue7.id, day: "Friday")
concert14 = Concert.create(artist: "Kanye West", genre: "Hip hop", venue_id: venue7.id, day: "Saturday")
concert15 = Concert.create(artist: "Childish Gambino", genre: "Hip hop", venue_id: venue8.id, day: "Friday")
concert16 = Concert.create(artist: "Young Thug", genre: "Hip hop", venue_id: venue8.id, day: "Saturday")