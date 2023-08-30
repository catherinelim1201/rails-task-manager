class TasksController < ApplicationController

  before_action :set_tasks, only: [:show, :edit, :update, :destroy]
  # read
  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  # # create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  # edit @ update
  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    # item deleted so divert to the main page with all the list of items
    # status: 303 -> data is not available internally, see from external
    redirect_to tasks_path, status: :see_other
  end

  private

  def set_tasks
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
