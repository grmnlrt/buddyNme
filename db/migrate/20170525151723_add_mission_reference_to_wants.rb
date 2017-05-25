class AddMissionReferenceToWants < ActiveRecord::Migration[5.0]
  def change
    add_reference :wants, :mission, foreign_key: true, index: true
  end
end