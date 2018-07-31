class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @problem = Problem.find(params[:problem_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to problem_task_path(id: @task.id, problem_id: @task.problem_id)
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
    params.require(:task).permit(:task_name, :problem_id)
  end
end
