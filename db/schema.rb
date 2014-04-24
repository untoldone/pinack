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

ActiveRecord::Schema.define(version: 20140423024541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "org_name"
    t.string   "country"
    t.string   "address"
    t.string   "address_line_two"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "fax"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "address"
    t.string   "address_line_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "vendor"
    t.string   "category"
    t.string   "notes"
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoice_lines", force: true do |t|
    t.string   "task"
    t.string   "notes"
    t.decimal  "cost"
    t.decimal  "units"
    t.integer  "company_id"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "number"
    t.date     "date_of_issuer"
    t.text     "note"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.date     "date"
    t.decimal  "amount"
    t.integer  "invoice_id"
    t.integer  "company_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "billing_method"
    t.decimal  "rate"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_members", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "rate"
    t.string   "phone"
    t.string   "username"
    t.string   "password"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timesheet_items", force: true do |t|
    t.date     "date"
    t.decimal  "hours"
    t.string   "notes"
    t.boolean  "billed"
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
