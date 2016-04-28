class ListUsersController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user
      ListUser.create(list_id: params[:list_id], user_id: user.id)
      redirect_to list_path(params[:list_id])
    else
      redirect_to list_path(params[:list_id])
    end

  end

end