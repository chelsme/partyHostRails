class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :party_id
  belongs_to :party
end
