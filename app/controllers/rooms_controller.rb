class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:roomname, :roominfo, :price, :address, :roomimage))
    if @room.save
      flash[:notice] = "ルームを新規登録しました"
      redirect_to "/reserve/new"
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
