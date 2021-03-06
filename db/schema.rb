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

ActiveRecord::Schema.define(version: 2018_11_24_155231) do

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password", default: ""
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.integer "host_id"
    t.string "name"
    t.string "date"
    t.string "time"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "party_guests", force: :cascade do |t|
    t.integer "party_id"
    t.integer "guest_id"
    t.string "RSVP", default: "tbd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.integer "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_songs_on_party_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "action"
    t.integer "guest_id", default: 1
    t.integer "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_tasks_on_guest_id"
    t.index ["party_id"], name: "index_tasks_on_party_id"
  end

end
