class Product < ApplicationRecord
  validates :product_id, presence: true, length: {minimum: 10}
  validates :title, presence: true, length: {minimum: 10}
end
