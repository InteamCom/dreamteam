class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.references :project
      t.references :task
    end
    add_index :project_tasks, :project_id
    add_index :project_tasks, :task_id
  end
end
