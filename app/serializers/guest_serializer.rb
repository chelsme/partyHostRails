class GuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :picture
  has_many :tasks
  has_many :parties
end
