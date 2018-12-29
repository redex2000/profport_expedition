# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_29_103022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expeditions", force: :cascade do |t|
    t.string "title"
  end

  create_table "galaxies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.float "route_length"
    t.bigint "expedition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expedition_id"], name: "index_itineraries_on_expedition_id", unique: true
  end

  create_table "itinerary_entries", force: :cascade do |t|
    t.integer "weight", default: 1, null: false
    t.bigint "planet_id"
    t.bigint "itinerary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itinerary_id", "planet_id"], name: "itinerary_planet_ids_unique", unique: true
    t.index ["itinerary_id"], name: "index_itinerary_entries_on_itinerary_id"
    t.index ["planet_id"], name: "index_itinerary_entries_on_planet_id"
    t.index ["weight", "itinerary_id"], name: "index_itinerary_entries_on_weight_and_itinerary_id", unique: true
  end

  create_table "planets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available", default: true
  end

  create_table "spaceships", force: :cascade do |t|
    t.string "title"
    t.float "velocity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "expedition_id"
    t.index ["expedition_id"], name: "index_spaceships_on_expedition_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "itineraries", "expeditions"
  add_foreign_key "itinerary_entries", "itineraries"
  add_foreign_key "itinerary_entries", "planets"
  add_foreign_key "spaceships", "expeditions"
end
