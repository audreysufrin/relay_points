class CreateRelayPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :relay_points do |t|
      t.string :name
      t.string :address
      t.date :hours

      t.timestamps
    end
  end
end
