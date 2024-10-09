class AddRoomIdToRoomUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :room_users, :room_id, :integer
    add_index :room_users, :room_id  
  end
end
