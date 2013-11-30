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

ActiveRecord::Schema.define(version: 20131130143827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "post_offices", force: true do |t|
    t.string  "name",          null: false
    t.integer "pincode",       null: false
    t.string  "office_type",   null: false
    t.string  "delivery_type", null: false
    t.string  "division",      null: false
    t.string  "region",        null: false
    t.string  "circle",        null: false
    t.string  "taluk"
    t.string  "district",      null: false
    t.string  "state",         null: false
  end

  add_index "post_offices", ["pincode"], name: "index_post_offices_on_pincode", using: :btree

end
