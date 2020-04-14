class Venue < ActiveRecord::Base
has_many :venue_ticket_holders
has_many :ticket_holders, through: :concerts
end
