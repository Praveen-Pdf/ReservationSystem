class Table < ApplicationRecord
  belongs_to :restaurant
  has_many :bookings  
  has_many :users, through: :bookings

  validates :table_name, length: {minimum:2, maximum:10}
  validates :capacity, presence: true
end
