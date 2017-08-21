class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :id_customer
      t.integer :id_employee
      t.datetime :day_order
      t.datetime :day_recieve
    end
  end
end
