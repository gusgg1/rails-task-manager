class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
     redirect_to @task
    else
      render :new
    end
  end

  def update
    @task.update(task_params)
    redirect_to @task
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end



  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # def index
  #   @restaurants = Restaurant.all
  # end

  # def show
  # end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def edit
  # end

  # def create
  #   p restaurant_params
  #   @restaurant = Restaurant.new(restaurant_params)
  #   p @restaurant
  #   if @restaurant.save
  #    redirect_to @restaurant
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to @restaurant
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  # private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :rating)
  # end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end
