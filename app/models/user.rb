class User < ActiveRecord::Base
  # has_one :role
  # has_secure_password

  validates  :name, :address,  length: { maximum: 35, minimum: 3 } 
  

end
