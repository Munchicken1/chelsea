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

ActiveRecord::Schema.define(version: 2019_03_25_165432) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "width"
    t.string "height"
    t.string "rabbet"
    t.integer "pcs"
    t.integer "ft"
    t.string "condition"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "mtype"
    t.index ["category"], name: "index_items_on_category"
    t.index ["color"], name: "index_items_on_color"
    t.index ["condition"], name: "index_items_on_condition"
    t.index ["height"], name: "index_items_on_height"
    t.index ["name"], name: "index_items_on_name"
    t.index ["rabbet"], name: "index_items_on_rabbet"
    t.index ["width"], name: "index_items_on_width"
  end

end
