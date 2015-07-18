class InquiriesController < ApplicationController
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

  def admin?
    if current_user
      if current_user.email == "steveono@gmail.com"
        true
      else
        false
      end
    else
      false
    end
  end

  def index
  	@inquiries = Inquiry.all
  end

  def show
  end

  def new
  end

  def create
    if verify_recaptcha
      # 10.times { puts "*" }
      # puts "RECAPTCHA VERIFIED"
      # 10.times { puts "*" }

    	inquiry = Inquiry.create(name: params['name'], message: params['message'])
      if admin?
    	  redirect_to "/inquiries"
      else
        flash[:success] = "Your message has been sent! I'll be in touch shortly."
        redirect_to "/"
      end
    else
      # 10.times { puts "*" }
      # puts "RECAPTCHA NOT VERIFIED"
      # 10.times { puts "*" }
      
      flash[:inquiry_error] = "Recaptcha Failed. Please try again."
      redirect_to '/contact'
    end
  end

end





