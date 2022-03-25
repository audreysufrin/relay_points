class ChangeLocationToLocalisationOnRelayPoints < ActiveRecord::Migration[6.1]
  def change
    remove_column :relay_points, :disponibility
  end
end
