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

ActiveRecord::Schema.define(version: 20131123064333) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.text     "marketing_copy"
    t.boolean  "is_active"
    t.string   "meta_title"
    t.string   "meta_desc"
    t.string   "image_caption"
    t.boolean  "run_feed"
    t.boolean  "convert_bw_option"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "main_cat"
  end

  create_table "formats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frame_styles", force: true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_categories", force: true do |t|
    t.integer  "image_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_frame_styles", force: true do |t|
    t.integer  "image_id"
    t.integer  "frame_style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_options", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "feed_identifier"
    t.boolean  "is_active"
    t.integer  "format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "prod_id"
    t.string   "title"
    t.string   "image_url"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.string   "main_cat"
    t.string   "sub_cat"
    t.integer  "year_taken"
    t.integer  "homepage_rank"
    t.boolean  "is_original"
    t.boolean  "is_active"
    t.integer  "format_id"
    t.integer  "photographer_id"
  end

  create_table "mats", force: true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photographers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "city"
    t.integer  "year_started"
    t.text     "bio"
    t.boolean  "is_active"
    t.string   "website"
    t.string   "title"
    t.string   "quote1"
    t.string   "quote2"
    t.string   "quote3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "qty"
    t.integer  "image_id"
    t.integer  "photo_option_id"
    t.integer  "mat_id"
    t.integer  "frame_style_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address"
    t.string   "password_digest"
  end

end
