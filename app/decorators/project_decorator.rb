class ProjectDecorator < Draper::Base
  decorates :project
  allows :name, :permalink, :created_at, :articles,
	:activities, :members, :tasks, :vacancies

  def description
    return project.articles.first.content if project.articles.first
    "No description"
  end

  def for_json
    { :id          => id,
      :name        => name,
      :created_at  => created_at,
      :description => description,
      :permalink   => permalink }
  end
end
