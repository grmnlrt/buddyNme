class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.references :mission, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
