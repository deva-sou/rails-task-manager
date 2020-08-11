class TasksController < ApplicationController
before_action :set_task, only: [:show, :edit, :update, :destroy]
  # See all restaurants
  def index
    @tasks = Task.all
  end

  # See details about one restaurant
  def show
  end

  # Create a restaurant
  def new
    @task = Task.new
  end

  # Create a restaurant
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to '/tasks'
  end

  # Update a restaurant
  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # Destroy a restaurant
  def destroy
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
