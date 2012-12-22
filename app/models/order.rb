class Order < ActiveRecord::Base
  attr_accessible :archive_flag, :details, :email, :name, :reserv_flag, :user_id, :img
  has_many :line_items, dependent: :destroy
  belongs_to :user

  validates :name, :email, presence: true

  has_attached_file :img, :styles => { :small => "250x250>" },
                    :url  => "/upload/user/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/upload/user/:id/:style/:basename.:extension"

  validates_attachment_size :img, :less_than => 5.megabytes
  validates_attachment_content_type :img, :content_type => ['image/jpeg', 'image/png']

  def add_line_items_from_cart(cart)
  	cart.line_items.each do |item|
  		item.cart_id = nil
  		line_items << item
  	end  	
  end
end
