class CreateDeliveryDates < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_dates do |t|
      t.string :date
      t.string :text

      t.timestamps
    end
  end
end
