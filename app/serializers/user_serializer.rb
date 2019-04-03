class UserSerializer < ActiveModel::Serializer
    attributes :id, :picture, :name
    has_many :members
    has_one :tree
    has_many :posts
    
  end