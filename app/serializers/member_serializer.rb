class MemberSerializer < ActiveModel::Serializer
  attributes :group_id, :family_member_id, :family_member_type, :relationship
  belongs_to :group
end
