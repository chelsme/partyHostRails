class Task < ApplicationRecord
  belongs_to :guest
  belongs_to :party
end
