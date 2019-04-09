class NonUser < ApplicationRecord
  has_many :members, as: :family_member
  belongs_to :group
end
