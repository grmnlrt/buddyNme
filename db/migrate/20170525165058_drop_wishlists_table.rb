class DropWishlistsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :wishlists do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
