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

ActiveRecord::Schema.define(version: 20131116210603) do

  create_table "companies", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.boolean  "admin"
=======
    t.boolean  "admin",                  default: false
>>>>>>> b22e3acdbe69fa2484ac9b15e5f6ed8f75040219
    t.string   "name"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true

  create_table "updates", force: true do |t|
    t.integer  "company_id"
    t.text     "update_SEI"
    t.text     "challenge"
    t.text     "support_req"
    t.integer  "impact"
    t.integer  "employed"
    t.integer  "volunteers"
    t.integer  "raised_funds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
