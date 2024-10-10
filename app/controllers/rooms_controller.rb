class RoomsController < ApplicationController

  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      params[:room][:user_ids].each do |user_id|
        RoomUser.find_or_create_by(room_id: @room.id, user_id: user_id)
      end
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
