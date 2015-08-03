class User < ActiveRecord::Base
	validates :password, presence: true, length: {minimum: 6}
	validates :username, presence: true
	has_secure_password

end
