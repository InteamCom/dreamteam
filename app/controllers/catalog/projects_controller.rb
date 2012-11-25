class Catalog::ProjectsController < Catalog::CatalogController
  defaults :resource_class  => Project

  def collection
    @projects = ProjectDecorator.decorate(Project.all).collect{ |p| p.for_json }
  end

  def create
    create!
    ProjectsLogic.publish(@project, params[:description], current_member)
  end
end
