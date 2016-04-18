class ListsController < ApplicationController

  def create
    list = List.new(name: params[:list][:name], creator_id: current_user.id)
    if list.save
      redirect_to user_path(current_user.id)
    else
      redirect_to root_path
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new()
  end

  def destroy
  end

end