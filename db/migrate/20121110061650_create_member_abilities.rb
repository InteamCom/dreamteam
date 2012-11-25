class CreateMemberAbilities < ActiveRecord::Migration
  def change
    create_table :member_abilities do |t|
      t.references :member
      t.references :ability
      t.integer :score
      t.text :comment
    end
    add_index :member_abilities, :member_id
    add_index :member_abilities, :ability_id
  end
end
