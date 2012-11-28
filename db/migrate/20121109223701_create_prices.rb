class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :product_type
      t.integer :price_1
      t.integer :price_2
      t.integer :price_3
      t.integer :price_4
      t.integer :price_5
      t.integer :price_6
      t.integer :price_7
      t.boolean :show_old_flag, default: false

      t.timestamps
    end
    add_index :prices, :product_type_id
  end
end
