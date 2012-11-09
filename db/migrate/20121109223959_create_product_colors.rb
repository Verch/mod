class CreateProductColors < ActiveRecord::Migration
  def change
    create_table :product_colors do |t|
      t.string :name
      t.string :rgb
      t.string :big_image_url
      t.references :product
      t.references :product_type

      t.timestamps
    end
    add_index :product_colors, :product_id
    add_index :product_colors, :product_type_id
  end
end
