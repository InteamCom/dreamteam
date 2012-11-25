class Activity < ActiveRecord::Base
  has_many :project_activities
  has_many :projects, :through => :project_activities
  has_many :members, :through => :project_activities
  has_many :tasks, :through => :project_activities

  attr_accessible :content, :date
end
