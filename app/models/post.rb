class Post < ApplicationRecord
    belongs_to :author, class_name: 'User',optional: true
    belongs_to :user,optional: true
    # accepts_nested_attributes_for :user, allow_destroy :true

    # belongs_to :subject, polymorphic:true
    # has_many :members, as: :subject
end
