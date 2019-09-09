class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.attributes = params[:project]
    @project.name = @project.name.strip
    @project.save!
    redirect_to :action => :index
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end

  def edit
    @project = Project.find_by_id!(params[:id])

  rescue ActiveRecord::RecordNotFound
    render :action => :index
  end

  def update
    @project = Project.find_by_id!(params[:id])
    @project.attributes = params[:project]
    @project.save!

    redirect_to :action => :index

  rescue ActiveRecord::RecordNotFound
    render :action => :index

  rescue ActiveRecord::RecordInvalid
    render :action => :edit
  end

  def destroy
    @project = Project.find_by_id!(params[:id])
    @project.destroy

    redirect_to :action => :index

  rescue ActiveRecord::RecordNotFound
    render :action => :index

  end



end
