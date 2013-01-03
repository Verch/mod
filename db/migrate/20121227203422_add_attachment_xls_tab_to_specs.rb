class AddAttachmentXlsTabToSpecs < ActiveRecord::Migration
  def self.up
    change_table :specs do |t|
      t.has_attached_file :xls_tab
    end
  end

  def self.down
    drop_attached_file :specs, :xls_tab
  end
end
