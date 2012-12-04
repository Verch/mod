class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :count
      t.string :value

      t.timestamps
    end
  end
end
