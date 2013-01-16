class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to:root, notice: "Welcome #{user.username}."
    else
      flash[:error] = "Incorrect username or password." 
      render 'new'
    end
  end

  def destroy
      session[:user] = nil   
      redirect_to :root, notice: "You have been logged out."
  end
end
