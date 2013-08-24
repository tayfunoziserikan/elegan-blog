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

ActiveRecord::Schema.define(version: 20130824071852) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "comment"
    t.integer  "rate"
    t.boolean  "banned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "pictures", force: true do |t|
    t.string   "title"
    t.string   "ext"
    t.string   "file_size"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.text     "body"
    t.text     "short_body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id"

  create_table "posts_tags", id: false, force: true do |t|
    t.integer "post_id", null: false
    t.integer "tag_id",  null: false
  end

  add_index "posts_tags", ["post_id", "tag_id"], name: "index_posts_tags_on_post_id_and_tag_id"
  add_index "posts_tags", ["tag_id", "post_id"], name: "index_posts_tags_on_tag_id_and_post_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
