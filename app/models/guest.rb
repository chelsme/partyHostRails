class Guest < ApplicationRecord
    has_many :tasks
    has_many :party_guests
    has_many :parties, through: :party_guests
end
