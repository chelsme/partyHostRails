class Party < ApplicationRecord
    has_many :tasks
    has_many :songs
    has_many :party_guests
    has_many :guests, through: :party_guests
end
