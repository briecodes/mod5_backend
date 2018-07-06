class User < ApplicationRecord
    has_secure_password
    
    has_many :events
    has_many :song_entries
    has_many :user_events

    validates :username, uniqueness: true
    validates :username, format: { without: /\s/ }
    validates :username, presence: true
    validates :name, presence: true
    validates :password, presence: true
end
