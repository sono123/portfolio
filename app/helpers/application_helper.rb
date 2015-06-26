module ApplicationHelper
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user
	end

	def logged_in?
		if current_user
			true
		else
			false
		end
	end
end
