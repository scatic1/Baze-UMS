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

ActiveRecord::Schema.define(version: 20171211015822) do

  create_table "job_advertisements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "work_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.integer "JBMG"
    t.date "date_of_birth"
    t.string "place_of_birth"
    t.integer "telephone_number"
    t.string "email"
    t.string "gender"
    t.text "CV"
    t.text "motivation_letter"
    t.bigint "job_advertisements_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_advertisements_id"], name: "index_job_applications_on_job_advertisements_id"
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.integer "jmbg"
    t.date "birthday"
    t.string "placebirth"
    t.integer "telephone"
    t.string "email"
    t.string "gender"
    t.string "username"
    t.string "password"
    t.string "category"
    t.integer "index"
    t.integer "ects"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "last_name"
    t.integer "JMBG"
    t.date "date_of_birth"
    t.string "place_of_birth"
    t.integer "phone"
    t.string "email"
    t.string "gender"
    t.string "username"
    t.string "password_digest"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "job_applications", "job_advertisements", column: "job_advertisements_id"
end
