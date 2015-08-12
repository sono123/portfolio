class SessionsController < ApplicationController
  layout false
 
  def create
    @auth = request.env['omniauth.auth']

		if user = User.find_by(email: @auth['info']['email'])
			user.update_attribute(:first_time_user, false)
			session[:user_id] = user.id
			flash[:position] = "location on page goes here"
			redirect_to "/portfolio/6"
		else
			user = User.create(
				email: @auth['info']['email'],
	      access_token: @auth['credentials']['token'],
	      refresh_token: @auth['credentials']['refresh_token'], #not working?
	      expires_at: Time.at(@auth['credentials']['expires_at']).to_datetime,
				name: @auth['extra']['raw_info']['name'],
				first_time_user: true)
			session[:user_id] = user.id
			flash[:position] = "location on page goes here"
			redirect_to "/portfolio/6"
		end
  end

  def destroy
		session[:user_id] = nil
		flash[:success] = "You have successfully logged out"
		flash[:position] = "location on page goes here"
		redirect_to "/portfolio/6"
  end

end



