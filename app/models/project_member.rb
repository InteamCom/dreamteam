class ProjectMember < ActiveRecord::Base
  belongs_to :project
  belongs_to :member
  attr_accessible :since, :project, :member
end
