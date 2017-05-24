class AddPhotosToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :photos, :json
  end
end
