class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, :notice => "You're in!"
    else
      render :new
    end
  end
end
