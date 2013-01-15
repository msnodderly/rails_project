class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :login, :notice => "Account created successfully. Please login"
    else
      render action: :new, :error => "There was an error creating your account."

    end


  end
end
