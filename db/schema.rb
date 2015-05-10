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

ActiveRecord::Schema.define(version: 20150509210125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "legs", force: :cascade do |t|
    t.integer  "vacation_id"
    t.string   "starting_city"
    t.string   "starting_state"
    t.string   "ending_city"
    t.string   "ending_state"
    t.string   "starting_lat"
    t.string   "starting_lng"
    t.string   "ending_lat"
    t.string   "ending_lng"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "vacations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
