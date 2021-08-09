class BookingMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    BookingMailer.with(booking: @booking, restaurant: @booking.table.restaurant_mail).new_booking_mail.deliver_later
    BookingMailer.with(booking: @booking, restaurant: @booking.table.restaurant_mail).new_booking_rest_mail.deliver_later
  end
end
