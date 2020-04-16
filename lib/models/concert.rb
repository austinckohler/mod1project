class Concert < ActiveRecord::Base
    has_many :ticket_holders
    belongs_to :venue
end
