class ChangePhoneNumberToString < ActiveRecord::Migration[6.1]
  def change
    change_column :relay_points, :phone_number, :string
  end
end
