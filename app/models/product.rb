class Product < ApplicationRecord
  validates :product_id, presence: true, length: {minimum: 9}
  validates :title, presence: true, length: {minimum: 10}
  validates :system_version, presence: true, length: {minimum: 3}
  validates :image_url, :description, presence: true
  validates :price, 
            :diagonal, 
            :ram, 
            :storage, 
            :camera, 
            :sim_card, 
            :battery_capacity, 
            :weight, numericality: {greater_than: 0, allow_nil: true}
end
