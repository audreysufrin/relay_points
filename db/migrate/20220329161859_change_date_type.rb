class ChangeDateType < ActiveRecord::Migration[6.1]
  def change
    remove_column :day_offs, :date
    add_column :day_offs, :date, :datetime
  end
end
