class DropWishlists < ActiveRecord::Migration[5.0]
  def change
    drop_table :wishlists
  end
end
