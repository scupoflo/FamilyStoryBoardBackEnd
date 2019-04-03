class Group < ApplicationRecord
    has_many :groups_members
    has_many :members, through: :groups_members
    belongs_to :tree
    # has_many :members
end
