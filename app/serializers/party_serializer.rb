class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :location
  has_many :guests
  has_many :tasks
  has_many :songs
end
