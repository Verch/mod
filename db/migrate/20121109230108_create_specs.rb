class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :number
      t.string :company_name
      t.integer :spec_num
      t.datetime :date
      t.integer :summa
      t.string :pay_type
      t.references :unp
      t.references :user
      t.references :order

      t.timestamps
    end
    add_index :specs, :unp_id
    add_index :specs, :user_id
    add_index :specs, :order_id
  end
end
