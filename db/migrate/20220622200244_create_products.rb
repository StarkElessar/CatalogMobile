class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string  :product_id
      t.string  :title
      t.float   :price
      t.string  :image_url
      t.float   :diagonal
      t.integer :ram
      t.integer :storage
      t.string  :system_version
      t.string  :camera
      t.integer :sim_card
      t.integer :battery_capacity
      t.float   :weight
      t.text    :description
      t.boolean :in_stock

      t.timestamps
    end
  end
end
