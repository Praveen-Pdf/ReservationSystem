class Table < ApplicationRecord
  belongs_to :restaurant

  validates :table_name, length: {minimum:2, maximum:10}
  validates :capacity, presence: true
end
