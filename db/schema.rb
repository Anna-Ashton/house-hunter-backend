# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_13_081422) do
  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.date "booking_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "estate_name"
    t.string "img_url"
    t.integer "price"
    t.integer "user_id"
    t.integer "landlord_id"
    t.string "location"
    t.text "description"
    t.string "house_type"
    t.integer "bedrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landlords", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.integer "contacts"
    t.string "caretaker_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact"
  end

end
