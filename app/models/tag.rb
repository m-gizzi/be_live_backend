class Tag < ApplicationRecord
    has_many :eventstags
    has_many :events, through: :eventstags
end
