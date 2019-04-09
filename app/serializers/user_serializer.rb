class UserSerializer < ActiveModel::Serializer
    attributes :id, :picture, :name
    has_many :members, serializer: MembersSerializer
    has_one :tree, serializer: TreeSerializer
    has_many :posts, serializer: PostSerializer
    has_many :groups, serializer: GroupSerializer

  end
