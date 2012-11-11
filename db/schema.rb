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

ActiveRecord::Schema.define(:version => 20121109230151) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discounts", :force => true do |t|
    t.integer  "count"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "quantity",        :default => 0
    t.integer  "cart_id"
    t.integer  "product_size_id"
    t.integer  "order_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "line_items", ["cart_id"], :name => "index_line_items_on_cart_id"
  add_index "line_items", ["order_id"], :name => "index_line_items_on_order_id"
  add_index "line_items", ["product_size_id"], :name => "index_line_items_on_product_size_id"

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "details"
    t.boolean  "reserv_flag"
    t.boolean  "archive_flag"
    t.integer  "user_id",      :default => 0
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "prices", :force => true do |t|
    t.integer  "product_type_id"
    t.integer  "price_1"
    t.integer  "price_2"
    t.integer  "price_3"
    t.integer  "price_4"
    t.integer  "price_5"
    t.integer  "price_6"
    t.integer  "price_7"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "prices", ["product_type_id"], :name => "index_prices_on_product_type_id"

  create_table "product_colors", :force => true do |t|
    t.string   "name"
    t.string   "rgb"
    t.string   "big_image_url"
    t.integer  "product_id"
    t.integer  "product_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "product_colors", ["product_id"], :name => "index_product_colors_on_product_id"
  add_index "product_colors", ["product_type_id"], :name => "index_product_colors_on_product_type_id"

  create_table "product_sizes", :force => true do |t|
    t.string   "name"
    t.integer  "count"
    t.integer  "reserv"
    t.integer  "number"
    t.integer  "product_color_id"
    t.integer  "product_type_id"
    t.integer  "product_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "product_sizes", ["product_color_id"], :name => "index_product_sizes_on_product_color_id"
  add_index "product_sizes", ["product_id"], :name => "index_product_sizes_on_product_id"
  add_index "product_sizes", ["product_type_id"], :name => "index_product_sizes_on_product_type_id"

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "big_image_url"
    t.string   "small_image_url"
    t.integer  "white_price_id"
    t.integer  "color_price_id"
    t.integer  "white_old_price_id"
    t.integer  "color_old_price_id"
    t.string   "all_sizes"
    t.integer  "product_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "product_types", ["product_id"], :name => "index_product_types_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "small_image_url"
    t.text     "description_top"
    t.text     "description_bottom"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "specs", :force => true do |t|
    t.integer  "number"
    t.string   "company_name"
    t.integer  "spec_num"
    t.datetime "date"
    t.integer  "summa"
    t.string   "pay_type"
    t.integer  "unp_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "specs", ["unp_id"], :name => "index_specs_on_unp_id"
  add_index "specs", ["user_id"], :name => "index_specs_on_user_id"

  create_table "unps", :force => true do |t|
    t.string   "unp"
    t.integer  "total_amount_money"
    t.string   "total_amount_product_integer"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.integer  "least_order",      :default => 5
    t.boolean  "admin_flag",       :default => false
    t.boolean  "view_reserv_flag", :default => false
    t.boolean  "view_sklad_flag",  :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "company_name"
    t.string   "unp"
    t.string   "juridical_address"
    t.string   "mailing_address"
    t.string   "contact_name"
    t.string   "phone_number_0"
    t.string   "phone_number_1"
    t.string   "phone_number_2"
    t.string   "phone_number_3"
    t.string   "skype"
    t.string   "work_time"
    t.boolean  "edit_data_flag",    :default => true
    t.boolean  "reg_confirm_admin", :default => false
    t.datetime "last_in"
    t.integer  "user_group_id",     :default => 2
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "users", ["user_group_id"], :name => "index_users_on_user_group_id"

end
