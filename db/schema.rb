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

ActiveRecord::Schema.define(version: 20170422201922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string  "cityName"
    t.string  "countryName"
    t.string  "startDate"
    t.string  "endDate"
    t.string  "transportIn"
    t.string  "transportOut"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_cities_on_trip_id", using: :btree
  end

  create_table "dates", force: :cascade do |t|
    t.string  "startDate"
    t.string  "endDate"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_dates_on_trip_id", using: :btree
  end

  create_table "hotels", force: :cascade do |t|
    t.string  "hotelName"
    t.string  "ciDate"
    t.string  "ciTime"
    t.string  "coDate"
    t.string  "coTime"
    t.string  "hotelLink"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_hotels_on_trip_id", using: :btree
  end

  create_table "maps", force: :cascade do |t|
    t.string  "mapLink"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_maps_on_trip_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string  "name"
    t.string  "bio"
    t.string  "image"
    t.integer "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "trips", force: :cascade do |t|
    t.string  "tripName"
    t.string  "tripDescription"
    t.integer "user_id"
    t.index ["user_id"], name: "index_trips_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "cities", "trips"
  add_foreign_key "dates", "trips"
  add_foreign_key "hotels", "trips"
  add_foreign_key "maps", "trips"
  add_foreign_key "profiles", "users"
  add_foreign_key "trips", "users"
end
