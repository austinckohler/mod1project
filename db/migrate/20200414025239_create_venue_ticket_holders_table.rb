class CreateConcertTable < ActiveRecord::Migration[6.0]
  def change
    create_table :concert do |t|
      t.string :artist, 
      t.string :genre, 
      t.refrences :venue, foreign_key: true
      t.string :day

    end
  end
end