class MissionsController < ApplicationController
  before_action :find_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions =  Mission.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@missions) do |mission, marker|
      marker.lat mission.latitude
      marker.lng mission.longitude
      marker.infowindow render_to_string(partial: "/missions/map_box", locals: { mission: mission })
    end
  end

  def show
    @booking = Booking.new
    @user = @mission.user
  end

  def new
    @mission = Mission.new
  end

  def edit
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    if @mission.save
      redirect_to mission_path(@mission)
    else
      render :new

    end
  end

  def update
    @mission.update(mission_params)
    @mission.save
    redirect_to mission_path(@mission)
  end

  def destroy
    @mission.destroy
    redirect_to missions_path, :notice => "Your mission has been deleted"
  end

  private

  def find_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:category, :title, :description, :address, :cost, :review, :user_id, :photo, :photo_cache, :date)
  end
end
