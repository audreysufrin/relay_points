class ChangeLocationToLocalisationOnRelayPoints < ActiveRecord::Migration[6.1]
  def change
    rename_column :relay_points, :location, :localisation
    remove_column :relay_points, :disponibility
  end
end
