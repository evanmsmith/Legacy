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

ActiveRecord::Schema.define(:version => 20120301064752) do

  create_table "eolforms", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "ad_street1"
    t.string   "ad_street2"
    t.string   "ad_city"
    t.string   "ad_state"
    t.integer  "ad_zip"
    t.string   "phone_number"
    t.string   "s1_agent_name"
    t.string   "s1_home_phone"
    t.string   "s1_cell_phone"
    t.string   "s1_street1"
    t.string   "s1_street2"
    t.string   "s1_city"
    t.string   "s1_state"
    t.integer  "s1_zip"
    t.string   "s1_relationship"
    t.string   "s2_agent_name"
    t.string   "s2_home_phone"
    t.string   "s2_cell_phone"
    t.string   "s2_street1"
    t.string   "s2_street2"
    t.string   "s2_city"
    t.string   "s2_state"
    t.integer  "s2_zip"
    t.string   "s2_relationship"
    t.string   "s3_agent_name"
    t.string   "s3_home_phone"
    t.string   "s3_cell_phone"
    t.string   "s3_street1"
    t.string   "s3_street2"
    t.string   "s3_city"
    t.string   "s3_state"
    t.integer  "s3_zip"
    t.string   "s3_relationship"
    t.text     "statement"
    t.string   "choice1"
    t.text     "choice1_comments"
    t.string   "choice2"
    t.text     "choice2_comments"
    t.string   "choice3"
    t.text     "choice3_comments"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

  create_table "forms", :force => true do |t|
    t.integer  "user_id"
    t.string   "string"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testforms", :force => true do |t|
    t.binary   "choice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
