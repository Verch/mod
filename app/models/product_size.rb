class ProductSize < ActiveRecord::Base
  belongs_to :product_color
  belongs_to :product_type
  belongs_to :product
  attr_accessible :count, :name, :number, :reserv
end
