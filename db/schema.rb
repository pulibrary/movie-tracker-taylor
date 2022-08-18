ActiveRecord::Schema.define(version: 2022_08_17_173427) do

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "genre"
    t.integer "watchlist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["watchlist_id"], name: "index_items_on_watchlist_id"
  end

  create_table "watchlists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "list_name"
    t.integer "item_id"
    t.index ["item_id"], name: "index_watchlists_on_item_id"
  end

  add_foreign_key "items", "watchlists"
  add_foreign_key "watchlists", "items"
end
