class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task, :party_id, :guest_id
  belongs_to :guest
  belongs_to :party
end
