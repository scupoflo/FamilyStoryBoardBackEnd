class Group < ApplicationRecord
    belongs_to :tree
    has_many :members
    has_many :users, through: :members, source: :family_member, source_type: 'User'
    has_many :non_users, through: :members, source: :family_member, source_type: 'Non-User'
end

def number_of_members
  self.members.size
end
