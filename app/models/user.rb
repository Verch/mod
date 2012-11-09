class User < ActiveRecord::Base
  attr_accessible :company_name, :contact_name, :edit_data_flag, :email, :juridical_address, :last_in, :mailing_address, :name, :password_digest, :phone_number_0, :phone_number_1, :phone_number_2, :phone_number_3, :reg_confirm_admin, :skype, :unp, :work_time
end
