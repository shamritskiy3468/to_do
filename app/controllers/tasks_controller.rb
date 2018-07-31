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
    if @task.save
      redirect_to @task
    else
      render :edit
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.destroy(params[:id])
    redirect_to action: :index
  end

  private

  def task_params
    params.require(:task).permit(:task_name)
  end
end
