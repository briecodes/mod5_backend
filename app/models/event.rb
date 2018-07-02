class Event < ApplicationRecord
    belongs_to :user
    has_many :song_entries
    has_many :users, through: :song_entries
end
