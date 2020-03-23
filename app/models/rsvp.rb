class RSVP < ApplicationRecord
    belongs_to :user, :event
end