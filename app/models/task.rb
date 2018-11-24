class Task < ApplicationRecord
  belongs_to :guest, optional: true
  belongs_to :party
end
