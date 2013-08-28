class AddTotalAmountProductsToUnps < ActiveRecord::Migration
  def change
    add_column :unps, :total_amount_products, :integer, default: 0
  end
end
