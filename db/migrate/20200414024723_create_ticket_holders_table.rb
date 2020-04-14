class CreateTicketHoldersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_holders do |t|
      t.string :name
      t.string :favorite_genre
    end
  end
end
