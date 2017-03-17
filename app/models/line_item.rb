class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  validates_presence_of :product, :cart, :quantity
end
