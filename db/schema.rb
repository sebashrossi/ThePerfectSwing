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

ActiveRecord::Schema.define(version: 2021_03_22_103036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "answer"
    t.bigint "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_questions_on_section_id"
  end

  create_table "section_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "section_id", null: false
    t.integer "quiz_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_section_users_on_section_id"
    t.index ["user_id"], name: "index_section_users_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.string "description"
    t.string "video_url"
    t.bigint "training_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["training_id"], name: "index_sections_on_training_id"
  end

  create_table "training_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "training_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["training_id"], name: "index_training_users_on_training_id"
    t.index ["user_id"], name: "index_training_users_on_user_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "department"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_trainings_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wrong_answers", force: :cascade do |t|
    t.string "content"
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_wrong_answers_on_question_id"
  end

  add_foreign_key "companies", "users"
  add_foreign_key "questions", "sections"
  add_foreign_key "section_users", "sections"
  add_foreign_key "section_users", "users"
  add_foreign_key "sections", "trainings"
  add_foreign_key "training_users", "trainings"
  add_foreign_key "training_users", "users"
  add_foreign_key "trainings", "companies"
  add_foreign_key "users", "companies"
  add_foreign_key "wrong_answers", "questions"
end
