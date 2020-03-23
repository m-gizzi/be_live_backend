class User < ApplicationRecord
    has_many :events, as: :host
    has_many :rsvps
    has_many :events, through: :rsvps
end
