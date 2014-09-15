class LoginsController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  
  def new
  end
  
  def create
     user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to root_path
    else
       flash[:alert] = "Incorrect info, try logging in again."
       render 'new'
    end
  end
  
  def destroy
     session[:user_id] = nil
     redirect_to root_path
  end
  
end
