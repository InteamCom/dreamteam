class CreateVacancyAbilities < ActiveRecord::Migration
  def change
    create_table :vacancy_abilities do |t|
      t.references :vacancy
      t.references :ability
    end
    add_index :vacancy_abilities, :vacancy_id
    add_index :vacancy_abilities, :ability_id
  end
end
