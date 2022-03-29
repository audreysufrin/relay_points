class AddDayOffToRelayPoint < ActiveRecord::Migration[6.1]
  def add_column
    add_column :relay_points, :day_off, :date
  end
end
