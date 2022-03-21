class AddPhoneNumberToRelayPoints < ActiveRecord::Migration[6.1]
  def change
    add_column :relay_points, :phone_number, :integer
  end
end
