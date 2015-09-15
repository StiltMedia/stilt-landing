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

ActiveRecord::Schema.define(version: 20150915185915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approaches", force: :cascade do |t|
    t.string   "approach"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "case_study_with_digital_marketing_id"
  end

  create_table "case_studies", force: :cascade do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "case_studies_categories", id: false, force: :cascade do |t|
    t.integer "case_study_id"
    t.integer "category_id"
  end

  add_index "case_studies_categories", ["case_study_id", "category_id"], name: "case_studies_categories_index", unique: true, using: :btree

  create_table "case_studies_pictures", id: false, force: :cascade do |t|
    t.integer "case_study_id"
    t.integer "picture_id"
  end

  add_index "case_studies_pictures", ["case_study_id", "picture_id"], name: "case_studies_pictures_index", unique: true, using: :btree

  create_table "case_study_with_digital_marketings", force: :cascade do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.text     "conclusion"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "results_file_name"
    t.string   "results_content_type"
    t.integer  "results_file_size"
    t.datetime "results_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "case_study_with_digital_marketings_categories", id: false, force: :cascade do |t|
    t.integer "case_study_with_digital_marketing_id"
    t.integer "category_id"
  end

  add_index "case_study_with_digital_marketings_categories", ["case_study_with_digital_marketing_id", "category_id"], name: "case_study_with_digital_marketings_categories_index", unique: true, using: :btree

  create_table "case_study_with_digital_marketings_pictures", id: false, force: :cascade do |t|
    t.integer "case_study_with_digital_marketing_id"
    t.integer "picture_id"
  end

  add_index "case_study_with_digital_marketings_pictures", ["case_study_with_digital_marketing_id", "picture_id"], name: "case_study_with_digital_marketings_pictures_index", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "business_name"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "goal"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "case_study_with_digital_marketing_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
