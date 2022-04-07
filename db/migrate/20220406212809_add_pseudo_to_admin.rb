class AddPseudoToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :pseudo, :string
  end
end
