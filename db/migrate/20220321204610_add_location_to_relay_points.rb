class AddLocationToRelayPoints < ActiveRecord::Migration[6.1]
  def change
    add_column :relay_points, :location, :text
  end
end
