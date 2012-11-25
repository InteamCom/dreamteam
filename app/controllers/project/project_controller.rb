class Project::ProjectController < ApplicationController
  inherit_resources
  belongs_to :project
  before_filter :find_project

  respond_to :json

  layout "application"

  private

  def find_project
    p = Project.find_by_permalink(params[:project_id])
    @project = ProjectDecorator.decorate(p)
    
    render :project_not_found if @project.nil?
  end
end