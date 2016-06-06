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

ActiveRecord::Schema.define(version: 20160604134054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_users_on_match_id", using: :btree
    t.index ["user_id"], name: "index_match_users_on_user_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "player_one_id"
    t.integer  "player_two_id"
    t.integer  "winner_id"
    t.string   "one_choice"
    t.string   "two_choice"
    t.boolean  "in_progress"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tournament_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_users_on_tournament_id", using: :btree
    t.index ["user_id"], name: "index_tournament_users_on_user_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.time     "starts_at"
    t.time     "ends_at"
    t.integer  "number_of_players"
    t.integer  "winner_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nick"
    t.integer  "wins"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_users_on_match_id", using: :btree
  end

end
