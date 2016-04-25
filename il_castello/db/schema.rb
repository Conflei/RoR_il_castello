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

ActiveRecord::Schema.define(version: 20160424182600) do

  create_table "car_images", force: :cascade do |t|
    t.string   "id_Car"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "model"
    t.string   "description"
    t.boolean  "available"
    t.string   "id_User"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "catalagos", force: :cascade do |t|
    t.string   "vehicle"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "citations", force: :cascade do |t|
    t.string   "model"
    t.string   "reason"
    t.string   "id_Car"
    t.string   "id_User"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "contentTitle"
    t.string   "contentDescription"
    t.string   "contentImage"
    t.boolean  "static"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "urlImage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.boolean  "isAdmin"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
