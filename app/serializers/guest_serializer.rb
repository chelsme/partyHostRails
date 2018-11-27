class GuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :picture, :party_guests
  has_many :tasks
  has_many :parties
end
