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

ActiveRecord::Schema.define(version: 2018_10_25_183109) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "postale_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "gossiptable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossiptable_id"], name: "index_comments_on_gossiptable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "gossiptables", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "date"
    t.integer "user_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_gossiptables_on_tag_id"
    t.index ["user_id"], name: "index_gossiptables_on_user_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.string "content"
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_private_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_private_messages_on_sender_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "gossiptable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossiptable_id"], name: "index_tags_on_gossiptable_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
