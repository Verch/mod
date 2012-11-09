class CreateUnps < ActiveRecord::Migration
  def change
    create_table :unps do |t|
      t.string :unp
      t.integer :total_amount_money
      t.string :total_amount_product_integer

      t.timestamps
    end
  end
end
