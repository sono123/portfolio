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

ActiveRecord::Schema.define(version: 20150623210404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inquiries", force: true do |t|
    t.string   "name"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "portfolio_pieces", force: true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "image_url"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "custom_partial"
  end

  create_table "posts", force: true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "author"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved"
    t.boolean  "featured"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "access_token"
    t.string   "refresh_token"
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
