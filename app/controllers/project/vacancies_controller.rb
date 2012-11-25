class Project::VacanciesController < Project::ProjectController
  defaults :resource_class  => Vacancy

  def create
    create!
    ProjectsLogic.publish_vacancy(@project, @vacancy, current_member)
    ActivitiesLogic.new_vacancy(@project, @vacancy, current_member)
  end

  def update
    update!
    ActivitiesLogic.update_vacancy(@project, @vacancy, current_member)
  end
end
