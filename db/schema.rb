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

ActiveRecord::Schema.define(version: 20150830155952) do

  create_table "blocks", force: true do |t|
    t.integer  "matome_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "block_id"
    t.string   "image"
    t.string   "q_url"
    t.string   "q_title"
    t.string   "q_description"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matomes", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "image"
  end

  add_index "matomes", ["user_id", "created_at"], name: "index_matomes_on_user_id_and_created_at"

  create_table "midasis", force: true do |t|
    t.string   "content"
    t.integer  "block_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mimages", force: true do |t|
    t.integer  "block_id"
    t.string   "image"
    t.string   "title"
    t.string   "q_url"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.integer  "block_id"
    t.string   "url"
    t.string   "q_url"
    t.string   "title"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.integer  "block_id"
    t.string   "quote"
    t.string   "q_url"
    t.string   "q_title"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.string   "content"
    t.integer  "block_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
