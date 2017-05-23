class MissionsController < ApplicationController
  before_action :find_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions =  Mission.all
  end

  def show
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
    params.require(:mission).permit(:category, :title, :description, :city, :cost, :review, :user_id, :photo, :photo_cache)
  end
end
