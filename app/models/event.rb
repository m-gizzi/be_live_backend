class Event < ApplicationRecord
    belongs_to :host, class_name: "User"
    has_many :eventstags
    has_many :rsvps
    has_many :tags, through: :eventstags
    has_many :users, through: :rsvps
end
