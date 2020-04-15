class CreateConcertsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.references :venue, foreign_key: true
      t.string :artist
      t.string :genre
      t.string :day
  end
end
end
