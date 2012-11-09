class Spec < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company_name, :date, :number, :pay_type, :spec_num, :summa, :unp
end
