class AddLocationToRelayPoints < ActiveRecord::Migration[6.1]
  def change
    add_column :relay_points, :localisation, :text
  end
end
