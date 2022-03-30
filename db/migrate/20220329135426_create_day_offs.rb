class CreateDayOffs < ActiveRecord::Migration[6.1]
  def change
    create_table :day_offs do |t|
      t.string :date

      t.timestamps
    end
  end
end
