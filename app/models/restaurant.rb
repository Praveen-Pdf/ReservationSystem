class Restaurant < ApplicationRecord
    has_many :tables, dependent: :destroy
    validates :phone_no, :start_time, :end_time,  presence: true
    validates :name, length: {minimum:10, maximum:20}
    validates :address, length: {minimum:20, maximum:200}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
