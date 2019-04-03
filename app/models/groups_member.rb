class GroupsMember < ApplicationRecord
    belongs_to :group, foreign_key: :group_id, class_name: "Group"
    belongs_to :member, foreign_key: :member_id, class_name: "Member"
    
end
