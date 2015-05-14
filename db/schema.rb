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

ActiveRecord::Schema.define(version: 20150513171943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artwork_images", force: :cascade do |t|
    t.string   "description"
    t.string   "shot_type"
    t.integer  "artwork_id"
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "is_main"
  end

  create_table "artworks", force: :cascade do |t|
    t.string   "title"
    t.integer  "year_started"
    t.integer  "year_completed"
    t.integer  "exhibition_id"
    t.string   "mediums"
    t.integer  "height"
    t.integer  "width"
    t.integer  "depth"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "artwork_images_count"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.integer  "venue_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "exhibition_type"
    t.string   "press_url"
    t.string   "curator"
    t.string   "start_month"
    t.string   "finish_month"
    t.integer  "year"
    t.string   "exhibition_image_url"
    t.string   "exhibition_image_url2"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email_address"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.string   "website_url"
    t.string   "image_url"
    t.string   "image_url2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
