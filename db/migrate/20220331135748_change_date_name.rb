class ChangeDateName < ActiveRecord::Migration[6.1]
  def change
    rename_column :day_offs, :date, :day_off_date
  end
end
