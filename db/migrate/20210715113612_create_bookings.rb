class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.integer :phone_no
      t.text :notes

      t.timestamps
    end
  end
end
