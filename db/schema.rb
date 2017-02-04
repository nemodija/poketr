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

ActiveRecord::Schema.define(version: 20170204142635) do

  create_table "abilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mega_effects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "dex"
    t.string   "name"
    t.integer  "type_id"
    t.integer  "attack"
    t.integer  "ability_id"
    t.integer  "mega_effect_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["ability_id"], name: "index_pokemons_on_ability_id", using: :btree
    t.index ["mega_effect_id"], name: "index_pokemons_on_mega_effect_id", using: :btree
    t.index ["type_id"], name: "index_pokemons_on_type_id", using: :btree
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemons", "abilities"
  add_foreign_key "pokemons", "mega_effects"
  add_foreign_key "pokemons", "types"
end
