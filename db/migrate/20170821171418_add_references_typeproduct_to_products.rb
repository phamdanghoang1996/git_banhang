class AddReferencesTypeproductToProducts < ActiveRecord::Migration[5.1]
  def change
      add_reference :products, :typeproducts, foreign_key: true
  end
end
