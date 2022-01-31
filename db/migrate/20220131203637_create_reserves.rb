class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.date :startdate
      t.date :enddate
      t.integer :people

      t.timestamps
    end
  end
end
