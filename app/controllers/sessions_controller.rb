class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(username: params[:session][:username].downcase)

		if user && user.authenticate(params[:session][:password_hash])
			session[:user_id] = user.id
			redirect_to awesome_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete :user_id
		redirect_to login_path
	end
end
