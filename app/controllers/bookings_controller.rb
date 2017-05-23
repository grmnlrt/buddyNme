class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @mission = Mission.find(booking_params[:mission])
    @booking = Booking.create(user: current_user, mission: @mission, date: Time.now)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:mission)
  end
end
