class Product < ApplicationRecord
  validates_presence_of :name, :description, :category, :price
  has_many :line_items, dependent: :destroy
  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  scope :books, -> { where(category: "Books") }
  scope :price, -> {order(:price)}
  scope :shoes, -> { where(category: "Shoes")}

  def self.order_by(search)
    if search and search != 'All'
      where(category: search)
    else
      all
    end
  end
end
