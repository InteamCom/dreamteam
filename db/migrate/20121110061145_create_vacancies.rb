class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :content
      t.boolean :open
      t.date :created_at
    end
  end
end
