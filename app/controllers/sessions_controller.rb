class SessionsController < ApplicationController

	def new
	end

	def create
		member = Member.find_by(email: params[:session][:email])
		if member && Member.authenticate(params[:session][:password])
			sign_in member
			redirect_to_user
		else
			flash.now[:error] = "Invalid email/password"
			render 'new'
		end
	end

	def destroy
	end
	
end