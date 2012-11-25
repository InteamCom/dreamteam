class CreateProjectMembers < ActiveRecord::Migration
  def change
    create_table :project_members do |t|
      t.references :project
      t.references :member
      t.date :since
    end
    add_index :project_members, :project_id
    add_index :project_members, :member_id
  end
end
