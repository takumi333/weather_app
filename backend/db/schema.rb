# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_29_090309) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "regions", force: :cascade do |t|
    t.string "name", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_histories", force: :cascade do |t|
    t.bigint "region_id", null: false
    t.datetime "date"
    t.integer "weather_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_search_histories_on_region_id"
  end

  create_table "setting_informations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "search_history_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_history_id"], name: "index_setting_informations_on_search_history_id"
    t.index ["user_id"], name: "index_setting_informations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_data", force: :cascade do |t|
    t.bigint "region_id", null: false
    t.bigint "search_history_id", null: false
    t.datetime "date", null: false
    t.float "temperature", null: false
    t.float "rain_probabilitie", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_weather_data_on_region_id"
    t.index ["search_history_id"], name: "index_weather_data_on_search_history_id"
  end

  add_foreign_key "search_histories", "regions"
  add_foreign_key "setting_informations", "search_histories"
  add_foreign_key "setting_informations", "users"
  add_foreign_key "weather_data", "regions"
  add_foreign_key "weather_data", "search_histories"
end
