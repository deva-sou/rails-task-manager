class TasksController < ApplicationController
  # See all restaurants
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  # See details about one restaurant
  # Create a restaurant
  # Update a restaurant
  # Destroy a restaurant
end
