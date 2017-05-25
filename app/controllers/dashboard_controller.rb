class DashboardController < ApplicationController

  def dashboard
    @missions = current_user.missions
    @missions_booked = @missions.where(book: true)
    @missions_pending = @missions.where(book: nil)
    @bookings = Booking.where(user_id: current_user.id)
  end

end
