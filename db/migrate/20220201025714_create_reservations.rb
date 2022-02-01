class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :startdate
      t.date :enddate
      t.integer :people

      t.timestamps
    end
  end
end
