class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_one :order
end
