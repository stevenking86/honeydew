class ListsController < ApplicationController

  def create
  end

  def show
    @list = List.find(params[:id])
  end

  def new
  end

  def destroy
  end

end