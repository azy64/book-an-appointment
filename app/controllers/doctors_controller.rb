class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show update destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all
    i = 0
    @doctors_hash = []
    while i < @doctors.length
      doctor_hash = {}
      doctor_hash['doctor'] = @doctors[i]
      doctor_hash['address'] = Address.find_by(doctor_addresses: DoctorAddress.find_by(doctor: @doctors[i]))
      @doctors_hash.push(doctor_hash)
      i += 1
    end
    render json: @doctors_hash
  end

  # GET /doctors/1
  def show
    @doc = {}
    @doc['doctor'] = @doctor
    @doc['address'] = Address.find_by(doctor_addresses: DoctorAddress.find_by(doctor: @doctor))
    render json: @doc
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created, location: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
    render json: { user: @doctor, message: 'Doctor successfully deleted' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def doctor_params
    params.require(:doctor).permit(:name, :email, :address_id)
  end
end
