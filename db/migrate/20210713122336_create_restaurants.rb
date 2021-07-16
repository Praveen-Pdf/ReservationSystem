class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.integer :phone_no
      t.text :address
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
