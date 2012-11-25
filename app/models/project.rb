class Project < ActiveRecord::Base
  has_many :project_articles
  has_many :project_activities
  has_many :project_members
  has_many :project_tasks
  has_many :project_vacancies
  has_many :articles, :through => :project_articles
  has_many :activities, :through => :project_activities
  has_many :members, :through => :project_members
  has_many :tasks, :through => :project_tasks
  has_many :vacancies, :through => :project_vacancies

  attr_accessible :name, :permalink

  def to_param
    permalink
  end
end
