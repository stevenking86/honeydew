class TasksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @task = Task.new
  end

  def create
  end


end