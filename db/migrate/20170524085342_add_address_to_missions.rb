class AddAddressToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :address, :string
  end
end
