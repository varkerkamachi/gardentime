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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130916002849) do

  create_table "caredifficulties", :force => true do |t|
    t.string   "level"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "cares", :force => true do |t|
    t.integer  "plant_id"
    t.integer  "sun"
    t.string   "sun_frequency"
    t.integer  "water"
    t.string   "water_frequency"
    t.integer  "soil_id"
    t.integer  "optimum_temperature_low"
    t.integer  "optimum_temperature_high"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "cares", ["plant_id"], :name => "index_cares_on_plant_id"
  add_index "cares", ["soil_id"], :name => "index_cares_on_soil_id"

  create_table "fertilizers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "galleries", :force => true do |t|
    t.integer  "plant_id"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "galleries", ["plant_id"], :name => "index_galleries_on_plant_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "plant_types", :force => true do |t|
    t.string   "name"
    t.text     "features"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.string   "genus"
    t.text     "description"
    t.integer  "location_id"
    t.integer  "season_id"
    t.integer  "gallery_id"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.decimal  "geoX",                :precision => 10, :scale => 8
    t.decimal  "geoY",                :precision => 10, :scale => 8
    t.integer  "caredifficulties_id"
    t.integer  "plant_type_id"
    t.string   "colors"
  end

  add_index "plants", ["gallery_id"], :name => "index_plants_on_gallery_id"
  add_index "plants", ["location_id"], :name => "index_plants_on_location_id"
  add_index "plants", ["season_id"], :name => "index_plants_on_season_id"

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "soils", :force => true do |t|
    t.string   "name"
    t.integer  "scale"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "votes", :force => true do |t|
    t.integer  "plant_id"
    t.integer  "vote"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "votes", ["plant_id"], :name => "index_votes_on_plant_id"

end
