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

ActiveRecord::Schema.define(version: 20170821172200) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 100
    t.string "email", limit: 200
    t.string "phonenumber", limit: 20
    t.string "address", limit: 200
    t.datetime "create_day"
    t.bigint "orders_id"
    t.index ["orders_id"], name: "index_customers_on_orders_id"
  end

  create_table "detail_orders", primary_key: ["id_order", "id_product"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id_order", null: false
    t.integer "id_product", null: false
    t.integer "quantity_buy"
    t.index ["id_order", "id_product"], name: "index_detail_orders_on_id_order_and_id_product", unique: true
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "day_order"
    t.datetime "day_recieve"
    t.bigint "customers_id"
    t.bigint "employees_id"
    t.index ["customers_id"], name: "index_orders_on_customers_id"
    t.index ["employees_id"], name: "index_orders_on_employees_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 150
    t.integer "price"
    t.integer "quantity"
    t.text "introduce"
    t.datetime "create_day"
    t.datetime "update_date"
    t.bigint "typeproducts_id"
    t.string "path_name", limit: 50
    t.index ["typeproducts_id"], name: "index_products_on_typeproducts_id"
  end

  create_table "typeproducts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 300
    t.string "path_name", limit: 50
  end

  add_foreign_key "customers", "orders", column: "orders_id"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "orders", "employees", column: "employees_id"
  add_foreign_key "products", "typeproducts", column: "typeproducts_id"
end
