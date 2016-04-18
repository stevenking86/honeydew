class TasksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @task = Task.new
    @possible_doers = @list.possible_doers
  end

  def create

  end


end