class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :roomname
      t.text :roominfo
      t.integer :price
      t.string :address
      t.string :roomimage

      t.timestamps
    end
  end
end
