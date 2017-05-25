class AddWishlistReferenceToWants < ActiveRecord::Migration[5.0]
  def change
    add_reference :wants, :wishlist, foreign_key: true, index: true
  end
end
