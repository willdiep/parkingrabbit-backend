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

ActiveRecord::Schema.define(version: 2020_06_10_005027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "listing_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "driver_name"
    t.string "driver_license"
    t.string "driver_contact_number"
    t.string "vehicle_license_plate"
    t.string "car_make"
    t.integer "car_year"
    t.string "billing_address"
    t.string "billing_city"
    t.string "billing_state"
    t.string "billing_zipcode"
    t.string "cardholder_name"
    t.string "card_number"
    t.string "card_exp_date"
    t.string "card_cvv"
    t.string "listing_total"
    t.index ["listing_id"], name: "index_bookings_on_listing_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "city"
    t.integer "zipcode"
    t.float "lat"
    t.float "long"
    t.integer "hourly_price"
    t.integer "monthly_price"
    t.datetime "available_start"
    t.datetime "available_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "parking_type"
    t.string "contact_name"
    t.string "contact_number"
    t.string "contact_email"
    t.float "rating"
    t.string "listing_image"
    t.string "features", default: [], array: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "listings"
  add_foreign_key "bookings", "users"
end
