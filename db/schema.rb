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

ActiveRecord::Schema.define(version: 20140416185054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "criteria", force: true do |t|
    t.string   "name",                  null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank_among_criteria",   null: false
    t.integer  "evaluation_session_id", null: false
  end

  add_index "criteria", ["evaluation_session_id"], name: "index_criteria_on_evaluation_session_id", using: :btree

  create_table "evaluation_sessions", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "item_type",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.string   "grouping",     null: false
    t.integer  "rank",         null: false
    t.float    "score",        null: false
    t.integer  "item_id",      null: false
    t.integer  "criterion_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["criterion_id"], name: "index_ratings_on_criterion_id", using: :btree
  add_index "ratings", ["item_id"], name: "index_ratings_on_item_id", using: :btree

end
