class GroupSerializer < ActiveModel::Serializer
  attributes :id, :tree_id, :name
  has_many :members
  
end