class ProjectsLogic

  def self.publish(project, description, member)
    article = Article.create(
      :title => "description",
      :content => description)
    ProjectsLogic.publish_article(project, article, member)
    ProjectsLogic.accept_member(project, member, DateTime.now)
  end

  def self.publish_article(project, article, member)
    # todo: article may be published already
    project.articles << article
  end

  def self.publish_task(project, task, member)
    # todo: task may be published already
    project.tasks << task
  end

  def self.publish_vacancy(project, vacancy, member)
    # todo: vacancy may be published already
    project.vacancies << vacancy
  end

  def self.accept_member(project, member, since)
    # todo: member may be accepted already
    project.project_members << ProjectMember.create(
      :member  => member,
      :project => project,
      :since   => DateTime.now)
  end
end