class Article < ActiveRecord::Base
  has_many :project_articles
  has_many :projects, :through => :project_articles
  
  attr_accessible :content, :title
end
