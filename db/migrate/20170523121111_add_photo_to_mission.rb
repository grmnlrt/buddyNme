class AddPhotoToMission < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :photo, :string
  end
end
