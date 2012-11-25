class Project::ArticlesController < Project::ProjectController
  defaults :resource_class  => Article

  def collection
    @articles = @project.articles
  end

  def create
    create!
    ProjectsLogic.publish_article(@project, @article, current_member)
    ActivitiesLogic.new_article(@project, @article, current_member)
  end

  def update
    update!
    ActivitiesLogic.update_article(@project, @article, current_member)
  end
end
