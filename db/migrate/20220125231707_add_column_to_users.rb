class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :userimage, :string
    add_column :users, :userinfo, :string
  end
end
