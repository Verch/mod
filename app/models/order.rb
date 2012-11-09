class Order < ActiveRecord::Base
  attr_accessible :archive_flag, :details, :email, :name, :reserv_flag
end
