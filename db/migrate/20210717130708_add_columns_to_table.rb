class AddColumnsToTable < ActiveRecord::Migration[6.1]
  def change
    add_column :tables, :restaurant_name, :string
    add_column :tables, :restaurant_mail, :string
  end
end
