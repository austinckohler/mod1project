# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_14_025239) do

  create_table "ticket_holders", force: :cascade do |t|
    t.string "name"
    t.string "favorite_genre"
  end

  create_table "venue_ticket_holders", force: :cascade do |t|
    t.integer "ticket_holder_id"
    t.integer "venue_id"
    t.string "day"
    t.index ["ticket_holder_id"], name: "index_venue_ticket_holders_on_ticket_holder_id"
    t.index ["venue_id"], name: "index_venue_ticket_holders_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  add_foreign_key "venue_ticket_holders", "ticket_holders"
  add_foreign_key "venue_ticket_holders", "venues"
end
