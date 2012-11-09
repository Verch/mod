class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product_size
  belongs_to :order
  attr_accessible :quantitu
end
