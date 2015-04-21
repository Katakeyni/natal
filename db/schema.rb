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

ActiveRecord::Schema.define(version: 20150421144859) do

  create_table "case_picture_links", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "case_picture_links", ["case_id"], name: "index_case_picture_links_on_case_id"
  add_index "case_picture_links", ["picture_id"], name: "index_case_picture_links_on_picture_id"

  create_table "cases", force: :cascade do |t|
    t.string   "response"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cases", ["user_id"], name: "index_cases_on_user_id"

  create_table "imagetags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "picture"
    t.integer  "tag"
    t.integer  "tag_id"
    t.integer  "picture_id"
  end

  add_index "imagetags", ["picture_id"], name: "index_imagetags_on_picture_id"
  add_index "imagetags", ["tag_id"], name: "index_imagetags_on_tag_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.string   "filetype"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "pictures", ["user_id"], name: "index_pictures_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "facebookId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "coins"
    t.integer  "steps"
  end

  create_table "won_cases", force: :cascade do |t|
    t.datetime "winAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "case"
    t.integer  "user"
    t.integer  "user_id"
    t.integer  "case_id"
  end

  add_index "won_cases", ["case_id"], name: "index_won_cases_on_case_id"
  add_index "won_cases", ["user_id"], name: "index_won_cases_on_user_id"

end
