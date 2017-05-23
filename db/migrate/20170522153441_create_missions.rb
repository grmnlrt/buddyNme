class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :city
      t.integer :cost
      t.string :review
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
