class Tree < ApplicationRecord
    has_many :groups
    belongs_to :user, optional: true
end
