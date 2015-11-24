class WelcomeController < ApplicationController
	before_action :status
	def welcomes
		
	end

	def logout_user
	  reset_session
	  redirect_to root_path
	end

	private

	def status
    (redirect_to root_path, alert: 'unauthorised access') unless session[:user_email].present?
  end

end