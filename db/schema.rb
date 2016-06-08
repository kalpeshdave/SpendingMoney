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

ActiveRecord::Schema.define(:version => 20160608082656) do

  create_table "bill_friends", :force => true do |t|
    t.integer  "bill_id"
    t.integer  "user_id"
    t.float    "contribution"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "bill_friends", ["bill_id"], :name => "index_bill_friends_on_bill_id"
  add_index "bill_friends", ["user_id"], :name => "index_bill_friends_on_user_id"

  create_table "bills", :force => true do |t|
    t.datetime "date"
    t.float    "amount"
    t.string   "bill_type",  :default => "Dinner"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "settles", :force => true do |t|
    t.integer  "payer"
    t.integer  "payee"
    t.float    "amount"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
