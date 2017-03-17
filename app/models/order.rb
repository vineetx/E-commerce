class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  validates :name, presence: true
  validates :address, presence: true
  validates :pincode, presence: true
  validates :mobile, presence: true
end
