ActiveRecord::Schema.define(version: 20160424060747) do

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

  create_table "clients", force: :cascade do |t|
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
    t.string   "name"
    t.boolean  "isAdmin"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true

  create_table "sections", force: :cascade do |t|
    t.string   "contentTitle"
    t.string   "contentDescription"
    t.string   "contentImage"
    t.boolean  "static"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.boolean  "isAdmin"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "urlImage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end