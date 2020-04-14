#file we are using to create test data
VenueTicketHolder.destroy_all
TicketHolder.destroy_all
Venue.destroy_all


venue1 = Venue.create(name: "Mission Ballroom", location: "RiNo")
venue2 = Venue.create(name: "Ogden Theater", location: "Capitol Hill")
venue3 = Venue.create(name: "Red Rocks Amphitheater ", location: "Morrison")
venue4 = Venue.create(name: "Boulder Theater", location: "Boulder")

ticket_holder1 = TicketHolder.create(name: "Bob", favorite_genre: "Metal")
ticket_holder2 = TicketHolder.create(name: "Jane", favorite_genre: "Country")
ticket_holder3 = TicketHolder.create(name: "Sally", favorite_genre: "EDM")
ticket_holder4 = TicketHolder.create(name: "Jim", favorite_genre: "Rap")
ticket_holder5 = TicketHolder.create(name: "Andy", favorite_genre: "Country")
ticket_holder6 = TicketHolder.create(name: "Bill", favorite_genre: "Country")

venue_ticket_holder1 = VenueTicketHolder.create(venue_id: venue1.id, ticket_holder_id: ticket_holder3.id, day: "Friday", artist: "Marshmellow", genre: "EDM")
venue_ticket_holder2 = VenueTicketHolder.create(venue_id: venue4.id, ticket_holder_id: ticket_holder6.id, day: "Saturday", artist: "Blake Shelton", genre: "Country")
venue_ticket_holder3 = VenueTicketHolder.create(venue_id: venue4.id, ticket_holder_id: ticket_holder2.id, day: "Friday", artist: "Kenny Chesney", genre: "Country")
venue_ticket_holder4 = VenueTicketHolder.create(venue_id: venue3.id, ticket_holder_id: ticket_holder1.id, day: "Friday", artist: "Metallica", genre: "Metal")
venue_ticket_holder5 = VenueTicketHolder.create(venue_id: venue2.id, ticket_holder_id: ticket_holder4.id, day: "Saturday", artist: "Snoop Dogg", genre: "Rap")
venue_ticket_holder6 = VenueTicketHolder.create(venue_id: venue2.id, ticket_holder_id: ticket_holder1.id, day: "Friday", artist: "Slipknot", genre: "Metal")
venue_ticket_holder7 = VenueTicketHolder.create(venue_id: venue1.id, ticket_holder_id: ticket_holder5.id, day: "Thursday", artist: "Jason Aldean", genre: "Country")
venue_ticket_holder8 = VenueTicketHolder.create(venue_id: venue3.id, ticket_holder_id: ticket_holder3.id, day: "Saturday", artist: "Carrie Underwood", genre: "Country")
venue_ticket_holder9 = VenueTicketHolder.create(venue_id: venue2.id, ticket_holder_id: ticket_holder3.id, day: "Thursday", artist: "Lil' Wayne", genre: "Rap")
venue_ticket_holder10 = VenueTicketHolder.create(venue_id: venue1.id, ticket_holder_id: ticket_holder2.id, day: "Saturday", artist: "Skrillex", genre: "EDM")