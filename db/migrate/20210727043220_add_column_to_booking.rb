class AddColumnToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :date, :date
    add_column :bookings, :time, :time
    add_column :bookings, :status, :boolean , default: false
    add_column :bookings, :cancel, :boolean , default: false
  end
end
