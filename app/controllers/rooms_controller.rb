class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:roomname, :roominfo, :price, :address, :roomimage, :user_id))
    if @room.save
      flash[:notice] = "ルームを新規登録しました"
      redirect_to "/reservations/new/#{@room.id}"
    else
      render "new"
    end
  end

  def post
    @user = current_user
    @rooms = @user.rooms
  end
  
  def show
    @user = current_user
    @rooms = Room.where(user_id: @user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
