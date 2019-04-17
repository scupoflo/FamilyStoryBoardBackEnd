class User < ApplicationRecord
    has_one :tree
    has_many :groups, through: :tree
    has_many :members, as: :family_member
    has_many :posts, foreign_key: :author_id

end
