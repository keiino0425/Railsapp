class ReservationsController < ApplicationController
  # before_action :permit_params, only: :confirm

  def index
  end

  def new
    session.delete(:reservation)
    @user = current_user
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def confirm
    @user = current_user
    @reservation = Reservation.new(params.require(:reservation).permit(:startdate, :enddate, :people, :room_id, :user_id))
    @room = Room.find(@reservation.room_id)
    @total_amount = @reservation.people * @room.price
    @reservation[:total_amount] = @total_amount
    session[:reservation] = @reservation

    if @reservation.invalid?
      render "new"
    end

  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:startdate, :enddate, :people, :room_id, :user_id, :total_amount))
    if @reservation.save
      redirect_to "/reservations/#{@reservation.id}"
    else
      render "confirm"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
