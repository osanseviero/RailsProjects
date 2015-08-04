class PostController < ApplicationController
	before_action :signed_in_user, only: [:new, :create]

	def index
	end

	def new
	end

	def create 
	end

	def signed_in_user
		unless signed_in?
			redirect_to login_url
		end
	end
end
