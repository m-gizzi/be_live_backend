class Event < ApplicationRecord
    belongs_to :host, class_name: "User"
    has_many :rsvps, :eventstags
    has_many :tags, through: :eventstags
    has_many :users, through: :rsvps
end
