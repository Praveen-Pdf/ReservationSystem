class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  validates :name, presence: true
  validates :phone_no, length: { in: 10..10 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
