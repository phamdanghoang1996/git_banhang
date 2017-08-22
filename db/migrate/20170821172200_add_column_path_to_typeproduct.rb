class AddColumnPathToTypeproduct < ActiveRecord::Migration[5.1]
  def change
    add_column :typeproducts, :path_name, :string, limit: 50
  end
end
