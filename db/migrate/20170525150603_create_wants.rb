class CreateWants < ActiveRecord::Migration[5.0]
  def change
    create_table :wants do |t|

      t.timestamps
    end
  end
end
