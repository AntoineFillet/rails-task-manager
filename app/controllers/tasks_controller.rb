class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def modify
    # change le titre de la task
    # change les détails de la task
    # send as completed
    # cliquer sur bouton update task
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
