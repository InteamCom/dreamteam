class ActivitiesLogic
  def self.new_article(project, article, member)
    project.activities << Activity.create(:content => "new article", :date => DateTime.now)
  end

  def self.update_article(project, article, member)
    project.activities << Activity.create(:content => "update article", :date => DateTime.now)
  end  

  def self.new_task(project, task, member)
    project.activities << Activity.create(:content => "new task", :date => DateTime.now)
  end

  def self.update_task(project, task, member)
    project.activities << Activity.create(:content => "update task", :date => DateTime.now)
  end  

  def self.new_vacancy(project, vacancy, member)
    project.activities << Activity.create(:content => "new vacancy", :date => DateTime.now)
  end

  def self.update_vacancy(project, vacancy, member)
    project.activities << Activity.create(:content => "update vacancy", :date => DateTime.now)
  end
end