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

ActiveRecord::Schema.define(version: 20160625224836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "despesas", force: :cascade do |t|
    t.string   "nome"
    t.float    "valor"
    t.date     "vencimento"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "despesas", ["restaurante_id"], name: "index_despesas_on_restaurante_id", using: :btree

  create_table "pratos", force: :cascade do |t|
    t.float    "valor"
    t.string   "nome"
    t.integer  "cod_barras"
    t.string   "tipo_pratoB"
    t.string   "tipo_bebida"
    t.string   "ml_bebida"
    t.string   "tipo_pratoC"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "despesas", "restaurantes"
end
