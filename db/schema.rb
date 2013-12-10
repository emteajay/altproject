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

ActiveRecord::Schema.define(version: 20131208200120) do

  create_table "companies", force: true do |t|
    t.string   "permalink"
    t.string   "name"
    t.text     "acquisitions"
    t.string   "phone_number"
    t.string   "category_code"
    t.integer  "founded_year"
    t.integer  "founded_month"
    t.integer  "founded_day"
    t.text     "funding_rounds"
    t.string   "homepage_url"
    t.text     "ipo"
    t.text     "offices"
    t.integer  "number_of_employees"
    t.string   "total_money_raised"
    t.string   "twitter_username"
    t.string   "overview"
    t.datetime "updated_at"
    t.text     "relationships"
    t.text     "investments"
    t.text     "milestones"
    t.integer  "investments_id"
    t.integer  "financial_organizations_id"
    t.datetime "created_at"
  end

  create_table "financial_organizations", force: true do |t|
    t.string   "name"
    t.string   "permalink"
    t.string   "description"
    t.integer  "founded_year"
    t.integer  "founded_month"
    t.integer  "founded_day"
    t.text     "funds"
    t.text     "investments"
    t.string   "homepage_url"
    t.integer  "number_of_employees"
    t.text     "offices"
    t.string   "overview"
    t.string   "phone_number"
    t.string   "twitter_username"
    t.datetime "updated_at"
    t.text     "relationships"
    t.text     "milestones"
    t.string   "blog_url"
    t.integer  "users_id"
    t.datetime "created_at"
  end

  create_table "investments", force: true do |t|
    t.string   "fund"
    t.integer  "vintage_year"
    t.integer  "commitment"
    t.integer  "paid_in"
    t.float    "distributed"
    t.float    "adjustment"
    t.float    "net_asset_value"
    t.float    "irr"
    t.integer  "financial_organizations_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_functions", force: true do |t|
    t.string   "search_criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
