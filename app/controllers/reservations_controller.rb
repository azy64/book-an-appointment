class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all
    @res = []
    i = 0
    while i < @reservations.length
      resevation = {}
      resevation['user'] = User.find_by(id: @reservations[i].user)
      resevation['doctor'] = Doctor.find_by(id: @reservations[i].doctor)
      resevation['reservation'] = @reservations[i]
      @res.push(resevation)
      i += 1
    end

    render json: @res
  end

  # GET /reservations/1
  def show
    @res = {}
    @res['user'] = User.find_by(id: @reservation.user)
    @res['doctor'] = Doctor.find_by(id: @reservation.doctor)
    @res['reservation'] = @reservation
    render json: @res
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)
    user = User.find_by(id: @reservation.user)
    doctor = Doctor.find_by(id: @reservation.doctor)
    @reservation.user = user
    @reservation.doctor = doctor
    # @reservation.user = current_user

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
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
    params.require(:reservation).permit(:reservation_time, :date, :user, :doctor)
  end
end
