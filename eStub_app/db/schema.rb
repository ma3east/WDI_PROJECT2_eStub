# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150804130237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "event_id"
  end

  add_index "categories", ["event_id"], name: "index_categories_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.text     "name"
    t.date     "date"
    t.text     "venue"
    t.string   "city"
    t.float    "price"
    t.text     "stub_file_upload"
    t.text     "event_url"
    t.integer  "rating"
    t.string   "accompanied_by"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "share"
  end

  add_index "events", ["category_id"], name: "index_events_on_category_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "email"
    t.date     "date_of_birth"
    t.string   "password_digest"
    t.text     "profile_pic"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "categories", "events"
  add_foreign_key "events", "categories"
  add_foreign_key "events", "users"
end
