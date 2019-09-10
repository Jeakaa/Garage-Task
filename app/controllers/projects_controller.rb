class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @project = Project.find_by_id!(params[:id])
  rescue ActiveRecord::RecordNotFound
    render :index
  end

  def update
    @project = Project.find_by_id!(params[:id])
    @project.attributes = params[:project]
    @project.save!

    redirect_to action: :index
  rescue ActiveRecord::RecordNotFound
    render :index
  rescue ActiveRecord::RecordInvalid
    render :edit
  end

  def destroy
    @project = Project.find_by_id!(params[:id])
    @project.destroy

    redirect_to action: :index
  rescue ActiveRecord::RecordNotFound
    render action: :index
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
