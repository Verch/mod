class RemoveTotalAmountProductIntegerFromUnps < ActiveRecord::Migration
  def up
    remove_column :unps, :total_amount_product_integer
  end

  def down
    add_column :unps, :total_amount_product_integer, :string
  end
end
