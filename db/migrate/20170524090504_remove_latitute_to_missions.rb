class RemoveLatituteToMissions < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :latitute, :float
  end
end
