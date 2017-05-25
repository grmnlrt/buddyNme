class AddBookToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :book, :boolean
  end
end
