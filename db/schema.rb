

ActiveRecord::Schema[7.0].define(version: 2023_02_25_141004) do
  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "star_rating"
    t.integer "product_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
