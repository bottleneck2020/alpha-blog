class User < ApplicationRecord

	validates :username, presence: true, uniqueness: { case_sensitive: false } true,
	           length: { minimum: 3, maximum: 25 }
	
	 VALID_EMAIL_REGEX: \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b           	

	validates :email, presence: true, length: { maximum: 105 },
			   uniqueness: { case_sensitive: false },
			   format: { with: 	VALID_EMAIL_REGEX }


end