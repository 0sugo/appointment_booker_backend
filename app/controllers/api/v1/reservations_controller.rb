class Api::V1::ReservationsController < ApplicationController
  # before_action :authenticate_api_v1_user!
  def index
    user = User.find(params[:user_id])
    @reservations = user.reservations
    render json: { status: 'Success', message: 'Entry retrieved succesfully', data: @reservations }, status: :ok
  end

  def create
    user = User.find(params[:user_id])
    @reservation = user.reservations.build(reservation_params)

    if @reservation.save
      render json: { status: 'Success', message: 'Entry created succesfully' }, status: :created
    else
      render json: { status: 'Failed', message: 'Failed to add entry' }, status: :bad_request
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    if @reservation.destroy
      render json: { status: 'Success', message: 'Record deleted sucessfully' }, status: :ok
    else
      render json: { status: 'Failed', message: 'Entry not deleted succesfully' }, status: :bad_request
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :doctor_id, :city, :date)
  end
end
