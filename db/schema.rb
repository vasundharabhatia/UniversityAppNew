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

ActiveRecord::Schema.define(version: 20150324160401) do

  create_table "college_students", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "Name"
    t.string   "Country"
    t.decimal  "SATMinScore"
    t.decimal  "SATMaxScore"
    t.string   "TuitionFees"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "colleges_students", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "Name"
    t.decimal  "Age"
    t.date     "DOB"
    t.string   "Sex"
    t.text     "Bio"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "Name"
    t.decimal  "Age"
    t.date     "DOB"
    t.decimal  "Score"
    t.string   "School"
    t.string   "Level"
    t.string   "Sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "mentor_id"
  end

end
