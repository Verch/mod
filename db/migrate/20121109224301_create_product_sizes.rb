class CreateProductSizes < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.string :name
      t.integer :count
      t.integer :reserv
      t.integer :number
      t.references :product_color
      t.references :product_type
      t.references :product

      t.timestamps
    end
    add_index :product_sizes, :product_color_id
    add_index :product_sizes, :product_type_id
    add_index :product_sizes, :product_id
  end
end
