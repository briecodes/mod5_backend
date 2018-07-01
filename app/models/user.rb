class User < ApplicationRecord
    has_many :events
    has_many :song_entries
end
