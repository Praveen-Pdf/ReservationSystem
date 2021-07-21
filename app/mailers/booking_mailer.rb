class BookingMailer < ApplicationMailer
    def new_booking_mail
        @booking = params[:booking]
        mail(to: @booking.email, subject: "Booking Confirmed!")
      end

      def new_booking_rest_mail
        @booking = params[:booking]
        @restaurant = params[:restaurant]
        mail(to: @restaurant, subject: "You got a new order!")
      end
end
