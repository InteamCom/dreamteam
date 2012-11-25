class CreateProjectActivities < ActiveRecord::Migration
  def change
    create_table :project_activities do |t|
      t.references :project
      t.references :activity
      t.references :mebmer
      t.references :task
    end
    add_index :project_activities, :project_id
    add_index :project_activities, :activity_id
    add_index :project_activities, :mebmer_id
    add_index :project_activities, :task_id
  end
end
