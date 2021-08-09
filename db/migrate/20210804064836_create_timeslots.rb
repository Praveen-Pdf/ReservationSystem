class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.references :table, null: false, foreign_key: true
      t.string :name
      t.date :date
      t.time :start
      t.time :end
      t.boolean :status

      t.timestamps
    end
  end
end
