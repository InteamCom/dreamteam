class ProjectVacancy < ActiveRecord::Base
  belongs_to :project
  belongs_to :vacancy
  # attr_accessible :title, :body
end
