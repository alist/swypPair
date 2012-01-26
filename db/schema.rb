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

ActiveRecord::Schema.define(:version => 20120125235646) do

  create_table "developers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "api_key"
    t.boolean  "revoked",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "swyp_ins", :force => true do |t|
    t.string   "where"
    t.integer  "velocity"
    t.string   "address"
    t.integer  "port"
    t.binary   "publicKey"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "swypToken"
    t.integer  "developer_id"
  end

  create_table "swyp_outs", :force => true do |t|
    t.string   "where"
    t.integer  "velocity"
    t.string   "address"
    t.integer  "port"
    t.binary   "publicKey"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "swyp_in_id"
    t.string   "swypToken"
    t.integer  "developer_id"
  end

end
