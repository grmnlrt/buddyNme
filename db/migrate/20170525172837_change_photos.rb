class ChangePhotos < ActiveRecord::Migration[5.0]
  def change
    change_column :missions, :photos, :string
    rename_column :missions, :photos, :photo
  end
end
