class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 0
      t.references :cart
      t.references :product_size
      t.references :order

      t.timestamps
    end
    add_index :line_items, :cart_id
    add_index :line_items, :product_size_id
    add_index :line_items, :order_id
  end
end
