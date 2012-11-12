class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.text :description
      t.string :big_image_url
      t.string :small_image_url
      t.integer :white_price_id
      t.integer :color_price_id
      t.integer :white_old_price_id
      t.integer :color_old_price_id
      t.string :all_sizes
      t.references :product

      t.timestamps
    end
    add_index :product_types, :product_id
  end
end
