class Price < ActiveRecord::Base
  belongs_to :product_type
  # attr_accessible :title, :body
end
