class TicketHolder < ActiveRecord::Base
    has_many :venue_ticket_holders
    has_many :venues, through: :venue_ticket_holders
end
