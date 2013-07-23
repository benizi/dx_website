class SessionsController < ApplicationController

	def new
	end

	def create
		member = Member.find_by(email: params[:session][:email])
		if member && Member.authenticate(params[:session][:password])
			#Sign in member
		else
			flash.now[:error] = "Invalid email/password"
			render 'new'
		end
	end

	def destroy
	end
	
end