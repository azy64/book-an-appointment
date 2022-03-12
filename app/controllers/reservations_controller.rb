class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservation_hash = Reservation.return_user_doctor_reservations
    render json: @reservation_hash
  end

  # GET /reservations/1
  def show
    @reservation_hash = Reservation.return_reservation_from(@reservation)
    render json: @reservation_hash
  end

  # POST /reservations
  def create
    @reservation = Reservation.new
    @reservation.reservation_time = params[:reservation][:reservation_time]
    @reservation.user = User.find_by(id: params[:reservation][:user])
    @reservation.doctor = Doctor.find_by(id: params[:reservation][:doctor])
    @reservation_hash = Reservation.return_reservation_from(@reservation)

    if @reservation.save
      render json: @reservation_hash, status: :created, location: @reservations
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:reservation_time, :user, :doctor)
  end
end
