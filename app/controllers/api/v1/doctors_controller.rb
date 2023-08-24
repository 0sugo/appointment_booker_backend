class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: { status: 'Success', message: 'Entry retrieved succesfully', data: @doctor }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { status: 'Not Found', message: 'Something went wrong' }, status: :not_found
  end
end
