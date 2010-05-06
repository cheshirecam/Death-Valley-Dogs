# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100504230357) do

  create_table "camps", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "rating"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", :force => true do |t|
    t.string   "name"
    t.string   "ham"
    t.string   "profile"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birth_date"
    t.string   "family"
  end

  create_table "dogs_hikes", :id => false, :force => true do |t|
    t.integer "dog_id"
    t.integer "hike_id"
  end

  create_table "dogs_trips", :id => false, :force => true do |t|
    t.integer "dog_id"
    t.integer "trip_id"
  end

  create_table "gps", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hike_events", :force => true do |t|
    t.integer  "hike_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hike_stories", :force => true do |t|
    t.integer  "hike_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dog_id"
  end

# Could not dump table "hikes" because of following StandardError
#   Unknown type 'url' for column 'album'

  create_table "radios", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rig_breakdowns", :force => true do |t|
    t.integer  "rig_id"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rig_upgrades", :force => true do |t|
    t.integer  "rig_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rigs", :force => true do |t|
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "engine"
    t.string   "tires"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.string   "picture"
    t.integer  "dog_id"
  end

  create_table "rigs_trips", :id => false, :force => true do |t|
    t.integer "rig_id"
    t.integer "trip_id"
  end

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
