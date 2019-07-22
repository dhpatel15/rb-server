ActiveRecord::Schema.define(version: 2019_02_25_022133) do

  create_table "users", force: :cascade do |t|
    t.string "user_id"
    t.datetime "created_at", null: false
  end

  create_table "comment", force: :cascade do |t|
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end


  create_table "user_votes", force: :cascade do |t|
    t.integer  "to_user_id"
    t.integer  "from_user_id"
    t.integer  "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.index ["to_user_id"], name: "index_favorites_on_to_user_id"
    t.index ["from_user_id"], name: "index_favorites_on_from_user_id"
  end

  add_index "userVotes", ["user_id"], name: "index_favorites_on_user_id"

  create_table "comment_votes", force: :cascade do |t|
    t.integer  "comment_id"
    t.integer  "user_id"
    t.integer  "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.index ["user_id"], name: "index_favorites_on_user_id"
    t.index ["comment_id"], name: "index_comments_on_comment_id"
  end
end