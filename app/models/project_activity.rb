class ProjectActivity < ActiveRecord::Base
  belongs_to :project
  belongs_to :activity
  belongs_to :mebmer
  belongs_to :task
end
