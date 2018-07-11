class Event < ApplicationRecord
    belongs_to :user
    has_many :song_entries
    has_many :users, through: :song_entries
    has_many :user_events

    validates :user_id, presence: true
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :location, presence: true
    validates :description, presence: true
end
