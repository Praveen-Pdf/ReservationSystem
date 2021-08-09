class RemoveColumsToBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :time
    remove_column :bookings, :status
    remove_column :bookings, :cancel
  end
end
