class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :events
  has_many :song_entries
  has_many :user_events
end
