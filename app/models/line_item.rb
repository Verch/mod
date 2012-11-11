class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product_size
  belongs_to :order
  attr_accessible :quantity, :product_size, :product_size_id

  def total_price
  	1 * quantity #change this!!!! 	
  end
end
