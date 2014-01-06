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

ActiveRecord::Schema.define(:version => 20130312144912) do

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "filters", :force => true do |t|
    t.float    "maximum_price"
    t.integer  "total_rooms"
    t.integer  "bathrooms"
    t.boolean  "furnished"
    t.string   "term"
    t.boolean  "negotiable"
    t.boolean  "utilities"
    t.boolean  "air_conditioning"
    t.boolean  "parking"
    t.boolean  "washer_dryer"
    t.boolean  "private_bathroom"
    t.integer  "available_rooms"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "listings", :force => true do |t|
    t.string   "address"
    t.float    "price"
    t.boolean  "featured"
    t.integer  "total_rooms"
    t.integer  "bathrooms"
    t.boolean  "furnished"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "term"
    t.integer  "user_id"
    t.boolean  "negotiable"
    t.boolean  "utilities"
    t.text     "description"
    t.boolean  "air_conditioning"
    t.boolean  "parking"
    t.boolean  "washer_dryer"
    t.boolean  "private_bathroom"
    t.integer  "available_rooms"
  end

  create_table "suggestions", :force => true do |t|
    t.text     "suggestion"
    t.integer  "rating"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
