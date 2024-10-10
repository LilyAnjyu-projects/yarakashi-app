class AddUniqueIndexToRoomUsers < ActiveRecord::Migration[7.0]
  def change
    add_index :room_users, [:room_id, :user_id], unique: true
  end
end
