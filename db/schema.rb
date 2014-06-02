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

ActiveRecord::Schema.define(version: 20140602143115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "company_name"
    t.string   "primary_contact_name"
    t.string   "primary_contact_phone"
    t.string   "primary_contact_email"
    t.text     "primary_contact_address_city_state_zip"
    t.string   "billing_contact_name"
    t.string   "billing_contact_phone"
    t.string   "billing_contact_email"
    t.text     "billing_contact_address_city_state_zip"
    t.string   "install_contact_name"
    t.string   "company_division_sub"
    t.boolean  "customer_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.text    "quote_information"
    t.decimal "quote_amount"
    t.date    "quote_due_date"
    t.date    "artwork_due_date"
    t.text    "artwork_proof_link"
    t.text    "production_notes"
    t.string  "quote_status"
    t.string  "quote_link"
    t.date    "order_ship_date"
    t.date    "order_installation_date"
    t.date    "created_at"
    t.date    "updated_at"
    t.string  "company_name"
  end

  create_table "search_suggestions", force: true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
