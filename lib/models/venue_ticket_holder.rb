class VenueTicketHolder < ActiveRecord::Base
    belongs_to :ticket_holders
    belongs_to :venues
end
