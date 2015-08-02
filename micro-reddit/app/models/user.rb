class User < ActiveRecord::Base
	validates :username, presence: true, uniqueness: true,
	        length: { maximum: 20 }
  validates :password, presence: true,
          length: { maximum: 10, minimum:5 }

   	has_many :posts
   	has_many :comments

end
