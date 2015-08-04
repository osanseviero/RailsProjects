class SessionsController < ApplicationController

	def new	
	end

	def create
		# Find user by email
		user = User.find_by(email: params[:session][:email].downcase)

		# Compare password
		if user && user.authenticate(params[:session][:password])
			flash[:success] = 'Thanks for signing in'
			sign_in user
			redirect_to root_path
		else
			flash[:error] = 'Invalid password/email combination'
			render 'new'
		end

	end

	def destroy
	end
end
