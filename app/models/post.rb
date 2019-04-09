class Post < ApplicationRecord
    belongs_to :author, foreign_key: :author_id, class_name: "User"
    # belongs_to :group
    # belongs_to :subject, polymorphic:true
    # has_many :members, as: :subject
end
