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

ActiveRecord::Schema.define(version: 20161212064305) do

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "song1"
    t.string   "song2"
    t.string   "song3"
    t.string   "song4"
    t.string   "song5"
    t.string   "song6"
    t.string   "song7"
    t.string   "song8"
    t.string   "song9"
    t.string   "song10"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.integer  "album_id"
    t.integer  "genre_id"
    t.string   "album_img_file_name"
    t.string   "album_img_content_type"
    t.integer  "album_img_file_size"
    t.datetime "album_img_updated_at"
    t.string   "song11"
    t.string   "song12"
    t.string   "song13"
    t.string   "song14"
    t.string   "song15"
    t.string   "song16"
    t.string   "song17"
    t.string   "song18"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
