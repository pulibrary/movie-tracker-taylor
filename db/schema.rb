ActiveRecord::Schema.define(version: 2022_08_18_221105) do

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "genre"
    t.integer "watchlist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["watchlist_id"], name: "index_items_on_watchlist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watchlists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "list_name"
    t.integer "item_id"
    t.integer "user_id", null: false
    t.index ["item_id"], name: "index_watchlists_on_item_id"
    t.index ["user_id"], name: "index_watchlists_on_user_id"
  end

  add_foreign_key "items", "watchlists"
  add_foreign_key "watchlists", "items"
  add_foreign_key "watchlists", "users"
end
