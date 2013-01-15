class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :root, :notice=> "Account created successfully."
    else
      render action: :new

    end


  end
end
