class User < ApplicationRecord
    has_one :tree
    has_many :members
    has_many :posts, foreign_key: :author_id, class_name: "Post"
end
