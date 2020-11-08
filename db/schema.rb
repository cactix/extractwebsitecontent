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

ActiveRecord::Schema.define(version: 20170409221503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",         default: 0, null: false
    t.integer  "attempts",         default: 0, null: false
    t.text     "handler",                      null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "progress_stage"
    t.integer  "progress_current", default: 0
    t.integer  "progress_max",     default: 0
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "ewc_job_dev04e5009b4e4a32ffe7fceca119ea2d939b3ad7d0s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev08a792dc40c68126b100f35c9ea81fc80a477fbbs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev1a532553c8771a765adaeead52ffd5e07541b9a4s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev247317edd2fbed736ea0c9d3ea37d66a738ad34as", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev28aa8abe701c26ceebabb53f68aadcf1e0e8ca4ds", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev2abb245923a424eafe24262aa1cd1f8eed5ba504s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev2f662efdac09b511edb73f3f6946aed63f737d76s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev3034ec78f196f537ff313e7da2c8807a55267bb4s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev31252fd29100ac5f42b875eb004c44c620d0301cs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev38b6d27b9c7411e5a264c8e4f5b9d6966dc656cfs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev3e1cf3ad4ac4d3091fbdeeb945d7b19732b8dc14s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev484f172c279d01e292b11d06b94ad12772058b31s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev4a4ebbf31d6a54aea312295bc1f265cb8c1401f9s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev507ccf1d683cee3ba79bbc61648f431badea4635s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev5b1d6dc017e823108cf73adebe3f519e20021340s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev6676af747694cbe50670b00c6dc17ae72c14d098s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev708e9b376da845a1476ae14889f7e79d3d656a1cs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev7bcca97b64e5efb74adae0b8aba45bbbde39f8cas", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev7d41e3a531b6613e764e16dd68d588b2b2b75469s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev7f07483d084ff6b27c515ebeea7bf187041d4c91s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_dev878ffa15449903c143f9ab9dae71b690de612e7bs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devafb8a88e311f9498cf7b89c4b54db8280e1f9955s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devb2d788c31f49e1601f12eed77581cc6efa2e9b52s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devb4e131670a970c281e7740526950c0285e9d9fdfs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devc38b4bbe8f9de63e07122b4d33d87e4ed9c9b410s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devd1c9ed9d612efb1fa4ff16afdd8c06fc00ff13e5s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_deve06e3567cc751d965cd221bee9cd943abb0bc851s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devf0f708c1a9714cac5008005b86e6e30a7ff624f6s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_job_devf232598e6c2bcf9d961844c134586c103e4f0323s", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewc_jobs", force: :cascade do |t|
    t.text     "url"
    t.string   "tag"
    t.text     "content"
    t.integer  "wordcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "AutoNumber"
    t.text     "IP_address"
    t.text     "url"
    t.string   "option_selected"
    t.string   "email"
    t.datetime "time_elapsed"
    t.string   "job_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "session_id"
    t.integer  "job_id"
    t.datetime "job_finished_at"
  end

end
