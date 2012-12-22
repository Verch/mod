class Spec < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company_name, :date, :user_id, :unp_id, :order_id,
  				  :number, :pay_type, :spec_num, :summa, :unp
end
