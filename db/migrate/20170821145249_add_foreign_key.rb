class AddForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :customers, foreign_key: true
    add_reference :orders, :employees, foreign_key: true
  end
end
