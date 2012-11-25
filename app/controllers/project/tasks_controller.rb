class Project::TasksController < Project::ProjectController
  defaults :resource_class  => Task

  def create
    create!
    ProjectsLogic.publish_task(@project, @task, current_member)
    ActivitiesLogic.new_task(@project, @task, current_member)
  end

  def update
    update!
    ActivitiesLogic.update_task(@project, @task, current_member)
  end
end
