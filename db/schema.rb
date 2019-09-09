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

ActiveRecord::Schema.define(:version => 20190902072409) do

  create_table "animals", :force => true do |t|
    t.string   "animal_type"
    t.string   "name"
    t.string   "hutch"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hutch_id"
    t.integer  "state"
  end

  create_table "bank", :id => false, :force => true do |t|
    t.string "name", :limit => 20
    t.float  "bill"
  end

  create_table "boards", :force => true do |t|
    t.string   "model_name"
    t.integer  "power"
    t.integer  "cpu_socket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", :force => true do |t|
    t.string   "model_name"
    t.integer  "power"
    t.integer  "memory_type_id"
    t.integer  "size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cave", :id => false, :force => true do |t|
    t.string  "name",   :limit => 20
    t.integer "volume"
  end

  create_table "city", :id => false, :force => true do |t|
    t.string  "name",   :limit => 80, :null => false
    t.integer "people"
    t.integer "size"
  end

  create_table "clock", :id => false, :force => true do |t|
    t.float   "price"
    t.string  "name",      :limit => 20
    t.string  "material",  :limit => 20
    t.integer "size"
    t.date    "timestamp"
  end

  create_table "computer_boxes", :force => true do |t|
    t.string   "model_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computer_boxes_sizes", :id => false, :force => true do |t|
    t.integer "computer_box_id"
    t.integer "size_id"
  end

  create_table "computers", :force => true do |t|
    t.string   "name"
    t.integer  "board_id"
    t.integer  "memory_item_id"
    t.integer  "power_block_id"
    t.integer  "cpu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "construction", :id => false, :force => true do |t|
    t.string  "name",    :limit => 80
    t.integer "park"
    t.integer "parking"
  end

  create_table "cpu_sockets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpus", :force => true do |t|
    t.string   "model_name"
    t.integer  "power"
    t.integer  "cores_count"
    t.integer  "cpu_socket_id"
    t.integer  "generation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disks", :force => true do |t|
    t.string   "model_name"
    t.integer  "power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dormitories", :id => false, :force => true do |t|
    t.string  "fio",    :limit => 30
    t.integer "yniver"
    t.integer "balls"
    t.string  "rank",   :limit => 30
  end

  create_table "drivers", :id => false, :force => true do |t|
    t.text    "name"
    t.integer "age"
    t.integer "salary"
    t.integer "time"
    t.text    "car"
    t.float   "kpd"
  end

  create_table "fans", :force => true do |t|
    t.string   "model_name"
    t.integer  "cpu_socket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", :force => true do |t|
    t.string   "hutch"
    t.string   "food_name"
    t.string   "food_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gamers", :force => true do |t|
    t.string   "name"
    t.string   "nick"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hutches", :force => true do |t|
    t.string   "hutch_material"
    t.string   "hutch_height"
    t.string   "hutch_gate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "material_id"
    t.string   "name"
  end

  create_table "internets", :force => true do |t|
    t.string   "name"
    t.string   "street_type"
    t.string   "street_name"
    t.string   "house"
    t.integer  "tariff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "massiv", :id => false, :force => true do |t|
    t.string "name",   :limit => 20
    t.string "salary", :limit => nil
  end

  create_table "materials", :force => true do |t|
    t.string   "material_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memory_items", :force => true do |t|
    t.string   "model_name"
    t.integer  "size"
    t.integer  "memory_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memory_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mining", :id => false, :force => true do |t|
    t.string  "material",  :limit => 20
    t.float   "hard"
    t.integer "under"
    t.date    "timestamp"
    t.float   "height"
  end

  create_table "mount", :id => false, :force => true do |t|
    t.string  "ore",   :limit => 20
    t.float   "value"
    t.integer "size"
  end

  add_index "mount", ["value", "size"], :name => "mount_value_size_index"

  create_table "paints", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pens", :force => true do |t|
    t.string   "name"
    t.string   "color"
    t.string   "city_supply"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :id => false, :force => true do |t|
    t.text    "name"
    t.integer "age"
    t.integer "salary"
    t.integer "time"
    t.float   "kpd"
  end

  create_table "phones", :id => false, :force => true do |t|
    t.string  "name",      :limit => 80
    t.float   "cost"
    t.integer "sim_value"
    t.integer "memory"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planshet", :id => false, :force => true do |t|
    t.string  "name",         :limit => 80
    t.float   "cost"
    t.integer "sim_value"
    t.integer "memory"
    t.float   "monitor_size"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "power_blocks", :force => true do |t|
    t.string   "model_name"
    t.integer  "power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_type_details", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_type_details_product_types", :id => false, :force => true do |t|
    t.integer  "product_type_id"
    t.integer  "product_type_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "product_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ski", :id => false, :force => true do |t|
    t.string "name",       :limit => 80
    t.float  "length"
    t.float  "height_for"
    t.float  "weight_for"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tovar_details", :force => true do |t|
    t.string   "character"
    t.string   "si"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tovar_details_tovar_types", :id => false, :force => true do |t|
    t.integer "tovar_type_id"
    t.integer "tovar_detail_id"
  end

  create_table "tovar_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tovar_values", :force => true do |t|
    t.integer  "value"
    t.integer  "tovar_id"
    t.integer  "tovar_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tovars", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "tovar_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "values", :force => true do |t|
    t.integer  "product_id"
    t.integer  "product_type_detail_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
