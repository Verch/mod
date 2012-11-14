class ProductType < ActiveRecord::Base
  attr_accessible :all_sizes, :big_image_url, :color_old_price_id, :color_price_id,
  				  :description, :name, :small_image_url, :white_old_price_id,
  				  :white_price_id
  has_many :prices
end
