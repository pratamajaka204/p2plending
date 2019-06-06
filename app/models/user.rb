class User < ActiveRecord::Base
	has_one :role

	validates :name,
	 		presence: true,
	  			length: { maximum: 35, minimum: 3 } 

end
