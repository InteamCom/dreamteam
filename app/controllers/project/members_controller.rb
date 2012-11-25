class Project::MembersController < Project::ProjectController
  defaults :resource_class  => Member
  actions :index, :show, :join

  def join
    ProjectsLogic.accept_member(@project, current_member, DateTime.now)
  end
end
