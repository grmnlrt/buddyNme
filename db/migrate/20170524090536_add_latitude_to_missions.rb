class AddLatitudeToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :latitude, :float
  end
end
