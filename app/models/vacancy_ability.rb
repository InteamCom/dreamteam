class VacancyAbility < ActiveRecord::Base
  belongs_to :vacancy
  belongs_to :ability
  # attr_accessible :title, :body
end
