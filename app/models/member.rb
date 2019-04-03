class Member < ApplicationRecord
    # has_many :posts, foreign_key: author_id
    has_many :groups_members
    has_many :groups, through: :groups_members
    belongs_to :tree_owner, foreign_key: :tree_owner_id, class_name: "User"
    belongs_to :family_member, foreign_key: :family_member_id, class_name: "User"
end
