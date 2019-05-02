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

ActiveRecord::Schema.define(version: 2019_04_18_120651) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorisations", force: :cascade do |t|
    t.integer "podcast_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorisations_on_category_id"
    t.index ["podcast_id"], name: "index_categorisations_on_podcast_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "podcast_id"
    t.integer "number"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcast_id"], name: "index_episodes_on_podcast_id"
  end

  create_table "favouritisations", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_favouritisations_on_episode_id"
    t.index ["user_id"], name: "index_favouritisations_on_user_id"
  end

  create_table "followships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_followships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_followships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_followships_on_follower_id"
  end

  create_table "keywordisations", force: :cascade do |t|
    t.integer "keyword_id"
    t.integer "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_keywordisations_on_episode_id"
    t.index ["keyword_id"], name: "index_keywordisations_on_keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "content"
    t.integer "episode_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_notes_on_episode_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "podcast_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcast_id"], name: "index_subscriptions_on_podcast_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
