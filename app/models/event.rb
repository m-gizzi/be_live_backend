class Event < ApplicationRecord
    belongs_to :host, class_name: "User"
    has_many :eventsTags
    has_many :rsvps
    has_many :tags, through: :eventsTags
    has_many :users, through: :rsvps
end
