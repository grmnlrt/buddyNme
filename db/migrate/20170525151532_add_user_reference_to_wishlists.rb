class AddUserReferenceToWishlists < ActiveRecord::Migration[5.0]
  def change
    add_reference :wishlists, :user, foreign_key: true, index: true
  end
end
