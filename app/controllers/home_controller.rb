class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
  end

  def admin
    @user = User.all
  end

  def profile
    @booking = Booking.where(user_id: current_user.id).reverse_order
  end
end
