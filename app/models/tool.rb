class Tool < ActiveRecord::Base
  attr_accessible :news, :order_wait_count,
  				  :user_wait_count, :last_time_sklad_edit
end
