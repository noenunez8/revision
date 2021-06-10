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

ActiveRecord::Schema.define(version: 2021_06_10_110034) do

  create_table "babies", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.integer "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "center_attention_employees", force: :cascade do |t|
    t.string "description"
    t.integer "center_attention_id", null: false
    t.integer "doctor_id", null: false
    t.integer "speciality_id", null: false
    t.integer "mother_id", null: false
    t.integer "baby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["baby_id"], name: "index_center_attention_employees_on_baby_id"
    t.index ["center_attention_id"], name: "index_center_attention_employees_on_center_attention_id"
    t.index ["doctor_id"], name: "index_center_attention_employees_on_doctor_id"
    t.index ["mother_id"], name: "index_center_attention_employees_on_mother_id"
    t.index ["speciality_id"], name: "index_center_attention_employees_on_speciality_id"
  end

  create_table "center_attentions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "direction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["direction_id"], name: "index_center_attentions_on_direction_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "directions", force: :cascade do |t|
    t.string "street"
    t.integer "number"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_directions_on_location_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "speciality_id", null: false
    t.integer "direction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["direction_id"], name: "index_doctors_on_direction_id"
    t.index ["speciality_id"], name: "index_doctors_on_speciality_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_locations_on_province_id"
  end

  create_table "mother_sons", force: :cascade do |t|
    t.integer "mother_id", null: false
    t.integer "baby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["baby_id"], name: "index_mother_sons_on_baby_id"
    t.index ["mother_id"], name: "index_mother_sons_on_mother_id"
  end

  create_table "mothers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "dni_number"
    t.integer "direction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["direction_id"], name: "index_mothers_on_direction_id"
  end

  create_table "pregnancy_controls", force: :cascade do |t|
    t.string "control_type"
    t.date "control_date"
    t.string "description"
    t.integer "mother_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mother_id"], name: "index_pregnancy_controls_on_mother_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tracings", force: :cascade do |t|
    t.date "date_of_visit"
    t.string "mother_is_health"
    t.string "son_is_health"
    t.string "description"
    t.integer "mother_id", null: false
    t.integer "baby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["baby_id"], name: "index_tracings_on_baby_id"
    t.index ["mother_id"], name: "index_tracings_on_mother_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "center_attention_employees", "babies"
  add_foreign_key "center_attention_employees", "center_attentions"
  add_foreign_key "center_attention_employees", "doctors"
  add_foreign_key "center_attention_employees", "mothers"
  add_foreign_key "center_attention_employees", "specialities"
  add_foreign_key "center_attentions", "directions"
  add_foreign_key "directions", "locations"
  add_foreign_key "doctors", "directions"
  add_foreign_key "doctors", "specialities"
  add_foreign_key "locations", "provinces"
  add_foreign_key "mother_sons", "babies"
  add_foreign_key "mother_sons", "mothers"
  add_foreign_key "mothers", "directions"
  add_foreign_key "pregnancy_controls", "mothers"
  add_foreign_key "provinces", "countries"
  add_foreign_key "tracings", "babies"
  add_foreign_key "tracings", "mothers"
end
