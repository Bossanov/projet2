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

ActiveRecord::Schema.define(version: 20180317164629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "article_title"
    t.text "article_content"
    t.string "article_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.string "status"
    t.string "theme"
    t.index ["profile_id"], name: "index_articles_on_profile_id"
  end

  create_table "donations", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "moyen"
    t.bigint "profile_id"
    t.integer "price_cents", default: 0, null: false
    t.index ["profile_id"], name: "index_donations_on_profile_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "reason"
    t.text "disponibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.string "destinataire"
    t.index ["profile_id"], name: "index_meetings_on_profile_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message_title"
    t.text "message_content"
    t.string "message_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "destinataire"
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_messages_on_profile_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_orders_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "category"
    t.string "address"
    t.string "post_code"
    t.string "city"
    t.string "photo"
    t.date "birthday"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "biographie"
    t.string "formation"
    t.float "latitude"
    t.float "longitude"
    t.string "departement"
    t.string "maildest"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_title"
    t.text "review_content"
    t.integer "rating"
    t.string "review_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "profiles"
  add_foreign_key "donations", "profiles"
  add_foreign_key "meetings", "profiles"
  add_foreign_key "messages", "profiles"
  add_foreign_key "orders", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "profiles"
end
