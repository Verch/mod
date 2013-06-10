class User < ActiveRecord::Base
  has_secure_password
  #email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attr_accessible :company_name, :email, :contact_name, :edit_data_flag, 
  				  :juridical_address, :last_in, 
   				  :mailing_address, :name, 
  				  :phone_number_0, :phone_number_1, :phone_number_2, 
  				  :phone_number_3, :reg_confirm_admin, :skype, :unp, 
  				  :work_time, :password, :password_confirmation,
  				  :user_group_id, :type_of_ownership
  belongs_to :user_groups
  has_many :orders
  validates :name, :company_name, :email, :type_of_ownership,
            presence: true, #валидация наличия
            length: { maximum: 100 } #валидация длинны
  validates :email, 
  #          format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } 
            uniqueness: { case_sensitive: false } #валидация уникальности
  validates :unp,
            length: { minimum: 9, maximum: 9 }
  #validates :password, 
  #         length: { minimum: 6 }
end
