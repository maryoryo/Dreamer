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

ActiveRecord::Schema.define(version: 2021_08_25_072714) do

  create_table "big_goals", force: :cascade do |t|
    t.integer "user_id"
    t.string "big_goal_content"
    t.text "big_goal_why"
    t.string "big_goal_when"
    t.text "big_goal_action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "subject", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "look_backs", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "write_time"
    t.integer "achievement_check"
    t.text "good_thing"
    t.text "bad_thing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medium_goals", force: :cascade do |t|
    t.integer "user_id"
    t.string "medium_goal_content"
    t.text "medium_goal_why"
    t.string "medium_goal_when"
    t.text "medium_goal_action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "small_goals", force: :cascade do |t|
    t.integer "user_id"
    t.string "small_goal_content"
    t.text "small_goal_why"
    t.string "small_goal_when"
    t.text "small_goal_action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin_flg"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
