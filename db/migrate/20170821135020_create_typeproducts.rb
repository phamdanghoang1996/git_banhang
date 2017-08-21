class CreateTypeproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :typeproducts do |t|
      t.string :name, limit: 300
    end
  end
end
