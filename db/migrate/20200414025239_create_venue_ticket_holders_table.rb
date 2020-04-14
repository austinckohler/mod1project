class CreateVenueTicketHoldersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :venue_ticket_holders do |t|
      t.references :ticket_holder, foreign_key: true
      t.references :venue, foreign_key: true
      t.string :day
    end
  end
end
