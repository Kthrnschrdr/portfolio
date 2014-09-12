class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect root_path
    else
      raise "Invalid.  Please try again."
    end
  end
end
