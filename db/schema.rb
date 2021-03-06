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

ActiveRecord::Schema.define(version: 20170216135243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking", id: false, force: :cascade do |t|
    t.integer "worker_id", null: false
    t.integer "car_id",    null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "model"
    t.string   "plate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "worker_name"
    t.text     "responsibility"
    t.integer  "department_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["department_id"], name: "index_workers_on_department_id", using: :btree
  end

  add_foreign_key "workers", "departments"
end
