class SongEntrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :song_title, :song_artist, :video_url, :video_id, :order_number, :played, :passed

  belongs_to :user
  belongs_to :event
end
