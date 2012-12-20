class AddAttachmentImgToOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.has_attached_file :img
    end
  end

  def self.down
    drop_attached_file :orders, :img
  end
end
