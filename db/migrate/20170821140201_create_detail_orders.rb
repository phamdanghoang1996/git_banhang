class CreateDetailOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_orders, {:id=>false} do |t|
      t.integer :id_order
      t.integer :id_product
      t.integer :quantity_buy
    end
  end
end
