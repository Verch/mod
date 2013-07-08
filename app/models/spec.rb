class Spec < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company_name, :date, :user_id, :unp_id, :order_id,
  				  :number, :pay_type, :spec_num, :summa, :xls_tab

  validates :company_name, :date, :summa, :number, :order_id, presence: true
  validates :number, :order_id, uniqueness: true

  has_attached_file :xls_tab,
                    :url  => "/upload/admin/:id/:basename.:extension",
                    :path => ":rails_root/public/upload/admin/:id/:basename.:extension"

  validates_attachment_size :xls_tab, :less_than => 5.megabytes
  validates_attachment_content_type :xls_tab, :content_type => ['application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.ms-excel']
end
