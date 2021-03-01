class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    @user.update

    redirect_to user_path(@user)
  end
end
