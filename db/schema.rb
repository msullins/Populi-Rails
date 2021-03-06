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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130605005800) do

  create_table "campaigns", :force => true do |t|
    t.string   "office"
    t.string   "locality_type"
    t.string   "locality"
    t.string   "state"
    t.integer  "zip"
    t.float    "goal"
    t.float    "funded"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.date     "start"
    t.date     "end"
  end

  add_index "campaigns", ["user_id"], :name => "index_campaigns_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.text     "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "password_salt"
    t.string   "password_hash"
    t.string   "email"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
