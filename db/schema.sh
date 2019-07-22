ActiveRecord::Schema.define(version: 2019_02_25_022133) do

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment", force: :cascade do |t|
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end


  create_table "votes", force: :cascade do |t|
    # notable_type will be saved as either a user or comment
    t.string  "notable_type"
    # notable_id will be saved as either a user_id or comment_id
    t.integer  "notable_id"
    # vote will be saved as 1 for upvote and -1 for downvote
    t.integer  "votable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.index ["notable_type"], name: "index_favorites_on_to_notable_type"
    t.index ["notable_id"], name: "index_favorites_on_from_notable_id"
  end
end