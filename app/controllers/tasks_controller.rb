class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)

    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Task.find(params[:id]).destroy

    redirect_to root_path
  end

  def up
    Task.find(params[:id]).move_up

    redirect_to root_path
  end

  def down
    Task.find(params[:id]).move_down

    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :project_id, :status)
  end
end
