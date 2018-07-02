class EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :location, :description, :key_code, :active

  belongs_to :user
  belongs_to :event
end
