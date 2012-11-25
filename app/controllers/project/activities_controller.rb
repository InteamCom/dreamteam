class Project::ActivitiesController < Project::ProjectController
  defaults :resource_class  => Activity

  def collection
    @activities = @project.activities
  end
end
