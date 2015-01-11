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

ActiveRecord::Schema.define(version: 20150111144209) do

  create_table "cars", force: true do |t|
    t.string   "car_brand"
    t.string   "car_model"
    t.string   "fuel_type"
    t.integer  "num_of_seats"
    t.integer  "price_per_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rents", force: true do |t|
    t.integer  "client_id"
    t.integer  "car_id"
    t.date     "rent_from_date"
    t.integer  "number_of_days_rent"
    t.integer  "rental_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
