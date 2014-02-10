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

ActiveRecord::Schema.define(version: 20140202215802) do

  create_table "trail_points", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "position_mile_pct"
    t.integer  "elevation_ft"
    t.integer  "trail_section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trail_points", ["trail_section_id"], name: "index_trail_points_on_trail_section_id"

  create_table "trail_resupplies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "offset_mile_pct"
    t.integer  "trail_point_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trail_resupplies", ["trail_point_id"], name: "index_trail_resupplies_on_trail_point_id"

  create_table "trail_sections", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "mile_pct"
    t.integer  "elevation_diff_ft"
    t.integer  "trail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trail_sections", ["trail_id"], name: "index_trail_sections_on_trail_id"

  create_table "trails", force: true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_sections", force: true do |t|
    t.integer  "duration_hours"
    t.integer  "extra_mile_pct"
    t.integer  "extra_elevation_diff_ft"
    t.decimal  "different_pace_mph"
    t.integer  "rest_hours"
    t.integer  "trip_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trip_sections", ["section_id"], name: "index_trip_sections_on_section_id"
  add_index "trip_sections", ["trip_id"], name: "index_trip_sections_on_trip_id"

  create_table "trips", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.decimal  "pace_mph"
    t.integer  "day_length_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
