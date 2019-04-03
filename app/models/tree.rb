class Tree < ApplicationRecord
    has_many :groups
    has_many :groups_members, through: :groups
    belongs_to :user
end
