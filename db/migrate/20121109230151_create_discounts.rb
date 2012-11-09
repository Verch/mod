class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :count
      t.integer :value

      t.timestamps
    end
  end
end
