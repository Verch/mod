class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.text :news
      t.integer :user_wait_count, default: 0
      t.integer :order_wait_count, default: 0
      t.datetime :last_time_sklad_edit

      t.timestamps
    end
  end
end
