class Party < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :songs, dependent: :destroy
    has_many :party_guests, dependent: :destroy
    has_many :guests, through: :party_guests
end
