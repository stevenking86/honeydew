class TasksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @task = Task.new
    @possible_doers = @list.possible_doers
  end

  def create
    @list = List.find(params[:list_id])
    task = Task.new(description: params[:task][:description], list_id: params[:list_id], due_date: params[:task][:due_date])
    if task.save
      Doer.create(task_id: task.id, doer_id: @list.get_doer_id_by_name(params[:doers]))
      redirect_to list_path(@list.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def completer
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @task.update(completed: 1)
    redirect_to list_path(@list.id)
  end

  def destroy
    @list = List.find(params[:list_id])
    Task.find(params[:task_id]).delete
    redirect_to list_path(@list.id)
  end

end