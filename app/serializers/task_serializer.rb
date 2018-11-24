class TaskSerializer < ActiveModel::Serializer
  attributes :id, :action, :party_id, :guest_id
  belongs_to :guest
  belongs_to :party
end
