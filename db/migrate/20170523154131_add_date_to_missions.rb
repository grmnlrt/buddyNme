class AddDateToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :date, :datetime
  end
end
