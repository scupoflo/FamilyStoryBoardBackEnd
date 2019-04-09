class Member < ApplicationRecord
    belongs_to :family_member, polymorphic:true
    belongs_to :group
    
end
