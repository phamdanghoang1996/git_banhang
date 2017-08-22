class AddColoumnPhotoToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :photo, :string, limit: 100
  end
end
