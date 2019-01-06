class Group < ApplicationRecord
 has_many :users,through: :menbers
 has_many :menbers
 validates :name, presence: true
end
