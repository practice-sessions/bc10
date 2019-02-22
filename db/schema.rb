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

ActiveRecord::Schema.define(version: 20190222162917) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "twitter"
    t.string   "linkedin"
    t.text     "What_programming_language_are_you_able_to_teach?"
    t.text     "What_duration_of_weeks_or_months_do_you_intend_to_volunteer?"
    t.text     "How_many_hours_a_week_do_you_have_available_to_volunteer?"
    t.text     "How_did_you_hear_about_us?"
    t.text     "comments"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

end
