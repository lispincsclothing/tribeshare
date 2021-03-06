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

ActiveRecord::Schema.define(version: 20151108155832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string   "header"
    t.decimal  "cost",                 precision: 8, scale: 2
    t.string   "title"
    t.string   "picture1"
    t.string   "picture2"
    t.string   "picture1_title"
    t.string   "picture2_title"
    t.string   "description"
    t.date     "expiration"
    t.decimal  "minimum_contribution", precision: 8, scale: 2
    t.string   "rfid"
    t.integer  "owner_id"
    t.integer  "custodian_id"
    t.boolean  "live",                                         default: false
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  add_index "campaigns", ["custodian_id"], name: "index_campaigns_on_custodian_id", using: :btree
  add_index "campaigns", ["owner_id"], name: "index_campaigns_on_owner_id", using: :btree

  create_table "hooks", force: :cascade do |t|
    t.string   "rfid"
    t.string   "photon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "merchantpois", force: :cascade do |t|
    t.string   "AggregateMerchantId"
    t.string   "AggregateMerchantName"
    t.string   "CleansedCityName"
    t.string   "CleansedCountryCode"
    t.string   "CleansedMerchantName"
    t.string   "CleansedMerchantPostalCode"
    t.string   "CleansedMerchantStreetAddress"
    t.string   "CleansedMerchantTelephoneNumber"
    t.string   "CleansedStateProvidenceCode"
    t.string   "CuisineCode"
    t.string   "DMACode"
    t.string   "GeocodeQualityIndicator"
    t.string   "HiddenGem"
    t.string   "InBusinessFlag"
    t.string   "Industry"
    t.string   "KeyAggregateMerchantId"
    t.string   "Latitude"
    t.string   "LocalFavorite"
    t.string   "Longitude"
    t.string   "MCCCode"
    t.string   "MSACode"
    t.string   "MerchantCityName"
    t.string   "MerchantCountryCode"
    t.string   "MerchantName"
    t.string   "MerchantPostalCode"
    t.string   "MerchantStateProvidenceCode"
    t.string   "MerchantStreetAddress"
    t.string   "NAICSCode"
    t.string   "NewBusinessFlag"
    t.string   "ParentAggregateMerchantId"
    t.string   "ParentAggregateMerchantName"
    t.string   "PrimaryChannelOfDistribution"
    t.string   "SuperIndustry"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount",      precision: 8, scale: 2
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "payments", ["campaign_id"], name: "index_payments_on_campaign_id", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "image"
    t.string   "photon"
    t.string   "mastercard_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
  add_foreign_key "payments", "campaigns"
  add_foreign_key "payments", "users"
end
