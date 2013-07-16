class Member < ActiveRecord::Base

	before_save { email.downcase! }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	#validations
	validates :first, presence: true, length: { maximum: 50 }
	validates :last, presence: true, length: { maximum: 50 }
	validates :status, presence: true
	validates :password, length:  { minimum: 6 }
	
	validates :peoplesoft, 	length: { is: 7 },
						   	allow_blank: true

	validates :email, 	presence: true, 
					  	format: { with: VALID_EMAIL_REGEX }, 
			  		  	uniqueness: { case_sensitive: false }

	has_secure_password

end