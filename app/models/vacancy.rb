class Vacancy < ActiveRecord::Base
  has_many :project_vacancies
  has_many :vacancies, :through => :project_vacancies

  attr_accessible :content, :created_at, :title, :open
end
