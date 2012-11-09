class Product < ActiveRecord::Base
  attr_accessible :description_bottom, :description_top, :name, :small_image_url
end
