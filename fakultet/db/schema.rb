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

ActiveRecord::Schema.define(version: 20171111123053) do

  create_table "job_applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "ime"
    t.string "prezime"
    t.integer "JMBG"
    t.date "datum_rodjenja"
    t.string "mjesto_rodjenja"
    t.integer "telefon"
    t.string "email"
    t.string "spol"
    t.string "cv"
    t.string "motivaciono_pismo"
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

end
