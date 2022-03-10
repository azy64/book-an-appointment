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
    @reservation_hash = {}
    @reservation_hash['user'] = User.find_by(id: @reservation.user)
    @reservation_hash['doctor'] = Doctor.find_by(id: @reservation.doctor)
    @reservation_hash['reservation'] = @reservation
    @reservation_hash['address'] = Address.find_by(id: DoctorAddress.find_by(id: @reservation.doctor.doctor_addresses))
    render json: @reservation_hash
  end

  # POST /reservations
  def create
    @reservation = Reservation.new
    @reservation.reservation_time = params[:reservation][:reservation_time]
    @reservation.user = User.find_by(id: params[:reservation][:user])
    @reservation.doctor = Doctor.find_by(id: params[:reservation][:doctor])
    @res = {}
    @res['reservation'] = @reservation
    @res['user'] = @reservation.user
    @res['doctor'] = @reservation.doctor
    @res['address'] = Address.find_by(id: DoctorAddress.find_by(id: @reservation.doctor.doctor_addresses))

    if @reservation.save
      render json: @res, status: :created, location: @reservations
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
