class Timeslot < ApplicationRecord
  belongs_to :table
  belongs_to :booking
end
