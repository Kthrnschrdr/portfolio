class LoginsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      raise "Invalid login."
    end
  end
  #
  # def current_user
  #   if session[:user_id]
  #     User.find(session[:user_id])
  #   end
  # end
  # helper_method :current_user
  
  
end
