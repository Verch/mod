class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :details
      t.boolean :reserv_flag, default: false
      t.boolean :archive_flag, default: false
      t.references :user, default: 0

      t.timestamps
    end
    add_index :orders, :user_id
  end
end
