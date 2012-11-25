class CreateProjectVacancies < ActiveRecord::Migration
  def change
    create_table :project_vacancies do |t|
      t.references :project
      t.references :vacancy
    end
    add_index :project_vacancies, :project_id
    add_index :project_vacancies, :vacancy_id
  end
end
