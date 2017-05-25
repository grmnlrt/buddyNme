class RemoveColumnFromMissions < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :photo, :string
  end
end
