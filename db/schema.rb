# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_23_161850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "ongoing"
    t.text "description"
    t.boolean "private"
    t.string "url"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "host_id"
    t.index ["host_id"], name: "index_events_on_host_id"
  end

  create_table "events_tags", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "tag_id", null: false
    t.index ["event_id", "tag_id"], name: "index_events_tags_on_event_id_and_tag_id"
    t.index ["tag_id", "event_id"], name: "index_events_tags_on_tag_id_and_event_id"
  end

  create_table "rsvps", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.index ["event_id", "user_id"], name: "index_rsvps_on_event_id_and_user_id"
    t.index ["user_id", "event_id"], name: "index_rsvps_on_user_id_and_event_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "users", column: "host_id"
end
