class Price < ActiveRecord::Base
  belongs_to :product_type
  attr_accessible :price_1, :price_2, :price_3, :price_4, :price_5, :price_6, :price_7, :show_old_flag
end
