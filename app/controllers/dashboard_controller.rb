class DashboardController < ApplicationController

def dashboard
  @missions = current_user.missions
end

end
