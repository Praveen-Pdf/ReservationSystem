class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: { guest: 0, admin: 1 }
         
         has_many :bookings
         has_many :tables, through: :bookings
end
