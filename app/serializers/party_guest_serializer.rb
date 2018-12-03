class PartyGuestSerializer < ActiveModel::Serializer
  attributes :id, :guest_id, :party_id, :RSVP, :guest
end
