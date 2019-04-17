class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :picture, :subject, :author_id
  # belongs_to :user
  # , serializer: UserSerializer
  # belongs_to :group, serializer: GroupSerializer
end

# class UserSerializer < ActiveModel::Serializer
#     attributes :id, :picture, :name
#     has_many :members
#     has_many :posts
#   end
