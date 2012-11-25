class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :permalink
      
      t.date :created_at
    end
  end
end
