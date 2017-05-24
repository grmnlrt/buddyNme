class RemoveCityToMission < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :city, :string
  end
end
