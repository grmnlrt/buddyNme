class MissionsController < ApplicationController
  before_action :find_mission, only: [:show, :edit, :destroy]

  def index
    @missions =  Mission.all
    @avatars = Mission::AVATARS
    @pics = Mission::PICS
  end

  def show
  end

  def new
    @mission = Mission.new
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

  private

  def find_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:category, :title, :description, :city, :cost, :review, :user_id, :photo, :photo_cache)
  end
end
