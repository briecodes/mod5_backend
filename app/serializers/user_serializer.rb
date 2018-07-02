class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :events
  has_many :song_entries
end
