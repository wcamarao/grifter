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

ActiveRecord::Schema.define(version: 20130930013150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "items", force: true do |t|
    t.string   "name",                                                                 null: false
    t.string   "picture",                                                              null: false
    t.string   "status",                                                               null: false
    t.string   "location"
    t.text     "description"
    t.decimal  "value",                                                                null: false
    t.integer  "user_id",                                                              null: false
    t.spatial  "lonlat",      limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["lonlat"], :name => "index_items_on_lonlat", :spatial => true

  create_table "trades", force: true do |t|
    t.string   "status",         null: false
    t.integer  "source_user_id", null: false
    t.integer  "target_item_id", null: false
    t.integer  "target_user_id", null: false
    t.integer  "source_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                                                                null: false
    t.string   "email",                                                               null: false
    t.string   "status",                                                              null: false
    t.string   "location"
    t.spatial  "lonlat",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["lonlat"], :name => "index_users_on_lonlat", :spatial => true

end
