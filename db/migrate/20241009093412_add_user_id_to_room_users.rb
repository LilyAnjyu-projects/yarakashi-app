class AddUserIdToRoomUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :room_users, :user_id, :integer
    add_index :room_users, :user_id 
  end
end
