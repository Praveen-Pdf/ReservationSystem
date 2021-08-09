class AddTimeslotToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :timeslot, null: true, foreign_key: true
  end
end
