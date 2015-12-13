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

ActiveRecord::Schema.define(version: 20151213160852) do

  create_table "cadastros", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comidas", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.float    "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.decimal  "elevacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacaos", force: :cascade do |t|
    t.integer  "numero"
    t.float    "valor"
    t.integer  "comida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "solicitacaos", ["comida_id"], name: "index_solicitacaos_on_comida_id"

end
