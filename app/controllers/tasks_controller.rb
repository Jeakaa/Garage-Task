class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(:status => 0)
    @task.attributes = params[:task]
    @task.save!
    redirect_to :controller => :projects, :action => :index
  rescue ActiveRecord::RecordInvalid
    redirect_to :controller => :projects, :action => :index
  end




  def edit
    @task = Task.find_by_id!(params[:id])

  rescue ActiveRecord::RecordNotFound
    render :action => :index
  end

  def update
    @task = Task.find_by_id!(params[:id])
    @task.attributes = params[:task]
    @task.save!

    redirect_to :controller => :projects, :action => :index

  rescue ActiveRecord::RecordNotFound
    render :controller => :projects, :action => :index

  rescue ActiveRecord::RecordInvalid
    render :action => :edit
  end




  def destroy
    @task = Task.find_by_id!(params[:id])
    @task.destroy

    redirect_to :controller => :projects, :action => :index

  rescue ActiveRecord::RecordNotFound
    redirect_to :controller => :projects, :action => :index
  end


end
