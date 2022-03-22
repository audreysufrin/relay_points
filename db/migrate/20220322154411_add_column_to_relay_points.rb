class AddColumnToRelayPoints < ActiveRecord::Migration[6.1]
  def change
    add_column :relay_points, :name_common, :string
    add_column :relay_points, :contact, :integer
    add_column :relay_points, :status, :string
    add_column :relay_points, :hours, :integer
    add_column :relay_points, :name_shopify, :string
    add_column :relay_points, :commune, :string
  end
end
