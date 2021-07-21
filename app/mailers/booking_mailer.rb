class BookingMailer < ApplicationMailer
    def new_booking_mail
        @booking = params[:booking]
        @restaurant = params[:restaurant]
        mail(to: @booking.email, subject: "You got a new order!")
        mail(to: @restaurant, subject: "You got a new order!")
      end
end
