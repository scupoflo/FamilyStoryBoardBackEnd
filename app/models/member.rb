class Member < ApplicationRecord
    belongs_to :family_member, polymorphic:true, optional: true
    belongs_to :group, optional: true

end
