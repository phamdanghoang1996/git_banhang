class AddColumnPathToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :path_name, :string, limit: 50
  end
end
