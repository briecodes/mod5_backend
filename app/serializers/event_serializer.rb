class EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :location, :description, :key_code, :active

  belongs_to :user
  has_many :song_entries
  has_many :users, through: :song_entries
end
