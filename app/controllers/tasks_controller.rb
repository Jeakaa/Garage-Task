class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    Task.create({ status: 0 }.merge(task_params))
    redirect_to controller: :projects, action: :index
  end

  def edit
    @task = Task.find_by_id!(params[:id])
  end

  def update
    @task = Task.find_by_id!(params[:id])

    if @task.update(task_params)
      redirect_to controller: :projects, action: :index
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by_id!(params[:id])
    @task.destroy

    redirect_to controller: :projects, action: :index
  rescue ActiveRecord::RecordNotFound
    redirect_to controller: :projects, action: :index
  end

  private

  def task_params
    params.require(:task).permit(:name, :project_id, :status)
  end
end
