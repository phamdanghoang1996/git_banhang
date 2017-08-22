class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, limit: 150
      t.integer :price
      t.integer :quantity
      t.text :introduce
      t.datetime :create_day
      t.datetime :update_date
    end
  end
end
