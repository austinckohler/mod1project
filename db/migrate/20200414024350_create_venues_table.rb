class CreateVenuesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
  end
end
end
