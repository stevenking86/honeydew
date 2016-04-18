class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
      else
        redirect_to root_path
      end
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end

end