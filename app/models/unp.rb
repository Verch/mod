class Unp < ActiveRecord::Base
  attr_accessible :total_amount_money, :total_amount_product_integer, :unp
  validates :unp, 
            length: { minimum: 9 }
end
