class AddPrimarykeysDetailOrder < ActiveRecord::Migration[5.1]
  def change
    add_index :detail_orders, ["id_order","id_product"], :unique=>true
  end
  execute "ALTER TABLE detail_orders ADD PRIMARY KEY (id_order, id_product);"
end
