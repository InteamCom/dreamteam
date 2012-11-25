class MemberAbility < ActiveRecord::Base
  belongs_to :member
  belongs_to :ability
  attr_accessible :comment, :score
end
