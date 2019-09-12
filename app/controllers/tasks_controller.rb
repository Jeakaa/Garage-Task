class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)

    redirect_to projects_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    Task.find(params[:id]).destroy

    redirect_to projects_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :project_id, :status)
  end
end
