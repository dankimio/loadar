# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_10_28_164051) do
  create_table "bids", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "route", null: false
    t.integer "load", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_name", "route", "load"], name: "index_bids_on_company_name_and_route_and_load", unique: true
    t.index ["company_name"], name: "index_bids_on_company_name"
    t.index ["load"], name: "index_bids_on_load"
    t.index ["route"], name: "index_bids_on_route"
  end
end
