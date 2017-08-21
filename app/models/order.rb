class Order < ApplicationRecord
  belongs_to :employees
  belongs_to :customers
end
