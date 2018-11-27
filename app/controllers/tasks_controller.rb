class TasksController < ApplicationController
  def index
    @Tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(title: params[:task][:title], details: params[:task][:details])
    @task.save
    redirect_to tasks_path
  end
  def show
    @Tasks = Task.all
    @task = @Tasks.find(params[:id])
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task_old = Task.find(params[:id])
    @task_old.update(task_params)
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end

private

def task_params
  params.require(:task).permit(:title, :details)
end
