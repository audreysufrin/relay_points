class ChangeDateTypeToDate < ActiveRecord::Migration[6.1]
  def change
    change_column :day_offs, :date, :date
  end
end
