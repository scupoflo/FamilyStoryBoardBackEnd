class GroupSerializer < ActiveModel::Serializer
  attributes :id, :tree_id, :name, :picture
  has_many :members
  # has_many :posts
end

class MemberSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :family_member_id, :family_member_type, :relationship, :name, :picture
  belongs_to :group, serializer: GroupSerializer
end
