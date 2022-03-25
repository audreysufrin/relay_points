class AddColumnToRelayPoints < ActiveRecord::Migration[6.1]
  def change
    add_column :relay_points, :name_common, :string
    add_column :relay_points, :contact, :string
    add_column :relay_points, :status, :string
    remove_column :relay_points, :hours
    add_column :relay_points, :hours, :string
    add_column :relay_points, :name_shopify, :string
    add_column :relay_points, :commune, :string
    add_column :relay_points, :image_shopify, :string
  end
end
