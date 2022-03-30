class ChangeDateType < ActiveRecord::Migration[6.1]
  def change
    change_column :day_offs, :date, :datetime
  end
end
