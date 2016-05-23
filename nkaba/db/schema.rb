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

ActiveRecord::Schema.define(version: 20160523174844) do

  create_table "complaints", force: :cascade do |t|
    t.text     "descriptions",    limit: 65535
    t.string   "path_of_image",   limit: 255
    t.string   "path_of_video",   limit: 255
    t.string   "membersh_number", limit: 255
    t.integer  "hospital_id",     limit: 4
    t.integer  "lab_id",          limit: 4
    t.integer  "doctor_id",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "complaints", ["doctor_id"], name: "index_complaints_on_doctor_id", using: :btree
  add_index "complaints", ["hospital_id"], name: "index_complaints_on_hospital_id", using: :btree
  add_index "complaints", ["lab_id"], name: "index_complaints_on_lab_id", using: :btree
  add_index "complaints", ["membersh_number"], name: "index_complaints_on_membersh_number", using: :btree

  create_table "doctor_hospitals", id: false, force: :cascade do |t|
    t.integer  "hospital_id", limit: 4, default: 0, null: false
    t.integer  "doctor_id",   limit: 4, default: 0, null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "doctor_hospitals", ["doctor_id"], name: "index_doctor_hospitals_on_doctor_id", using: :btree
  add_index "doctor_hospitals", ["hospital_id"], name: "index_doctor_hospitals_on_hospital_id", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "degree",         limit: 255
    t.string   "specialization", limit: 255
    t.string   "address",        limit: 255
    t.string   "phone",          limit: 255
    t.string   "governorate",    limit: 255
    t.string   "area",           limit: 255
    t.float    "price",          limit: 24
    t.string   "time_from",      limit: 255
    t.string   "time_to",        limit: 255
    t.string   "mobile",         limit: 255
    t.float    "rate",           limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "engineers", primary_key: "membersh_number", force: :cascade do |t|
    t.string   "number_health_care",     limit: 255
    t.string   "national_id",            limit: 255
    t.string   "name",                   limit: 255
    t.string   "address",                limit: 255
    t.string   "phone_number",           limit: 255
    t.date     "data_of_birth"
    t.date     "join_data"
    t.string   "graduation_year",        limit: 255
    t.integer  "number_of_participants", limit: 4
    t.integer  "gender",                 limit: 4
    t.string   "credit_card",            limit: 255
    t.string   "email",                  limit: 255
    t.string   "path",                   limit: 255
    t.integer  "limit_id",               limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "engineers", ["limit_id"], name: "index_engineers_on_limit_id", using: :btree

  create_table "evaluate_doctors", id: false, force: :cascade do |t|
    t.integer  "doctor_id",       limit: 4,   default: 0,  null: false
    t.string   "membersh_number", limit: 255, default: "", null: false
    t.float    "rate",            limit: 24
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "evaluate_doctors", ["doctor_id"], name: "index_evaluate_doctors_on_doctor_id", using: :btree
  add_index "evaluate_doctors", ["membersh_number"], name: "index_evaluate_doctors_on_membersh_number", using: :btree

  create_table "evaluate_hosptials", id: false, force: :cascade do |t|
    t.integer  "hospital_id",     limit: 4,   default: 0,  null: false
    t.string   "membersh_number", limit: 255, default: "", null: false
    t.float    "rate",            limit: 24
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "evaluate_hosptials", ["hospital_id"], name: "index_evaluate_hosptials_on_hospital_id", using: :btree
  add_index "evaluate_hosptials", ["membersh_number"], name: "index_evaluate_hosptials_on_membersh_number", using: :btree

  create_table "evaluate_labs", id: false, force: :cascade do |t|
    t.integer  "lab_id",          limit: 4,   default: 0,  null: false
    t.string   "membersh_number", limit: 255, default: "", null: false
    t.float    "rate",            limit: 24
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "evaluate_labs", ["lab_id"], name: "index_evaluate_labs_on_lab_id", using: :btree
  add_index "evaluate_labs", ["membersh_number"], name: "index_evaluate_labs_on_membersh_number", using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "phone",         limit: 255
    t.string   "governorate",   limit: 255
    t.float    "latitude",      limit: 24
    t.float    "longitudes",    limit: 24
    t.string   "area",          limit: 255
    t.float    "rate",          limit: 24
    t.text     "descriptation", limit: 65535
    t.string   "path",          limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "phone",         limit: 255
    t.string   "governorate",   limit: 255
    t.float    "latitude",      limit: 24
    t.float    "longitudes",    limit: 24
    t.string   "area",          limit: 255
    t.float    "rate",          limit: 24
    t.text     "descriptation", limit: 65535
    t.string   "path",          limit: 255
    t.integer  "type",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "limits", force: :cascade do |t|
    t.float    "remainder_of_total",          limit: 24
    t.float    "credit_of_surgeries",         limit: 24
    t.string   "credit_medical_tests_rumors", limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "relatives", id: false, force: :cascade do |t|
    t.string   "number_health_care", limit: 255, default: "", null: false
    t.string   "membersh_number",    limit: 255, default: "", null: false
    t.date     "date_of_birth"
    t.string   "name",               limit: 255
    t.integer  "gender",             limit: 4
    t.string   "relation_type",      limit: 255
    t.string   "national_id",        limit: 255
    t.integer  "limit_id",           limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "relatives", ["limit_id"], name: "index_relatives_on_limit_id", using: :btree
  add_index "relatives", ["membersh_number"], name: "index_relatives_on_membersh_number", using: :btree

  create_table "require_tests", id: false, force: :cascade do |t|
    t.integer  "transfer_id", limit: 4,   default: 0, null: false
    t.string   "test",        limit: 255
    t.integer  "test_id",     limit: 4,   default: 0, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "require_tests", ["test_id"], name: "index_require_tests_on_test_id", using: :btree
  add_index "require_tests", ["transfer_id"], name: "index_require_tests_on_transfer_id", using: :btree

  create_table "transfers", force: :cascade do |t|
    t.date     "data_of_request"
    t.integer  "percentage_shareholding", limit: 4
    t.string   "status",                  limit: 255
    t.float    "total_cost",              limit: 24
    t.text     "medicaldiagnosis",        limit: 65535
    t.string   "membersh_number",         limit: 255
    t.integer  "doctor_id",               limit: 4
    t.integer  "hospital_id",             limit: 4
    t.integer  "lab_id",                  limit: 4
    t.integer  "type_id",                 limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "transfers", ["doctor_id"], name: "index_transfers_on_doctor_id", using: :btree
  add_index "transfers", ["hospital_id"], name: "index_transfers_on_hospital_id", using: :btree
  add_index "transfers", ["lab_id"], name: "index_transfers_on_lab_id", using: :btree
  add_index "transfers", ["membersh_number"], name: "index_transfers_on_membersh_number", using: :btree
  add_index "transfers", ["type_id"], name: "index_transfers_on_type_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name_of_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "complaints", "doctors"
  add_foreign_key "complaints", "hospitals"
  add_foreign_key "complaints", "labs"
  add_foreign_key "doctor_hospitals", "doctors"
  add_foreign_key "doctor_hospitals", "hospitals"
  add_foreign_key "engineers", "limits"
  add_foreign_key "evaluate_doctors", "doctors"
  add_foreign_key "evaluate_hosptials", "hospitals"
  add_foreign_key "evaluate_labs", "labs"
  add_foreign_key "relatives", "limits"
  add_foreign_key "require_tests", "transfers"
  add_foreign_key "transfers", "doctors"
  add_foreign_key "transfers", "hospitals"
  add_foreign_key "transfers", "labs"
  add_foreign_key "transfers", "types"
end
