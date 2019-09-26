class User < ActiveRecord::Base
  # has_one :role
  # has_secure_password
  
  # Validasi 
  scope :active, -> {where('users.is_active = ?', true)}
  validates  :name, :address,  length: { maximum: 35, minimum: 3 } 
  

end
