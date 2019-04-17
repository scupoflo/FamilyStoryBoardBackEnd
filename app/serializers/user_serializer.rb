class UserSerializer < ActiveModel::Serializer
    attributes :id, :picture, :name
    has_many :members
    has_many :posts
    has_many :groups

  end

  class GroupSerializer < ActiveModel::Serializer
    attributes :id, :tree_id, :name, :picture
    has_many :members
  end

  class MemberSerializer < ActiveModel::Serializer
    attributes :id, :group_id, :family_member_id, :family_member_type, :relationship, :name, :picture
    belongs_to :group, serializer: GroupSerializer
  end
