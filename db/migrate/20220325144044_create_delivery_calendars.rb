class CreateDeliveryCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_calendars do |t|
      t.string :user
      t.string :string
      t.string :place_of_delivery
      t.string :string

      t.timestamps
    end
  end
end
