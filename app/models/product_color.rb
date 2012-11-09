class ProductColor < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_type
  attr_accessible :big_image_url, :name, :rgb
end
