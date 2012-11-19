class UserGroup < ActiveRecord::Base
  attr_accessible :admin_flag, :least_order, 
  				  :name, :view_reserv_flag, :view_sklad_flag
  has_many :users

  validates :name,
  			presence: true,
  			uniqueness: true,
  			uniqueness: { case_sensitive: false }
end
