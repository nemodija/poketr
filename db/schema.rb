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

ActiveRecord::Schema.define(version: 20170210132615) do

  create_table "abilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "note"
    t.string   "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mega_effects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          null: false
    t.string   "note"
    t.integer  "mega_skill_up", null: false
    t.integer  "pokemon_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["pokemon_id"], name: "index_mega_effects_on_pokemon_id", using: :btree
  end

  create_table "pokemon_abilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pokemon_id",                 null: false
    t.integer  "ability_id",                 null: false
    t.boolean  "default",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["ability_id"], name: "index_pokemon_abilities_on_ability_id", using: :btree
    t.index ["pokemon_id"], name: "index_pokemon_abilities_on_pokemon_id", using: :btree
  end

  create_table "pokemons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "dex",                      null: false
    t.string   "name",                     null: false
    t.string   "series"
    t.integer  "attack",                   null: false
    t.integer  "max_level_up", default: 0, null: false
    t.integer  "type_id",                  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["type_id"], name: "index_pokemons_on_type_id", using: :btree
  end

  create_table "type_strength_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "type_id",          null: false
    t.integer  "strength_type_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["type_id"], name: "index_type_strength_types_on_type_id", using: :btree
  end

  create_table "type_weakness_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "type_id",          null: false
    t.integer  "weakness_type_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["type_id"], name: "index_type_weakness_types_on_type_id", using: :btree
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mega_effects", "pokemons"
  add_foreign_key "pokemons", "types"
end
