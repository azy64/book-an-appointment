class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show update destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all
    i = 0
    @docs = []
    while i < @doctors.length
      doc = {}
      doc['doctor'] = @doctors[i]
      doc['address'] = Address.find_by(doctor_addresses: DoctorAddress.find_by(doctor: @doctors[i]))
      @docs.push(doc)
      i += 1
    end
    render json: @docs
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
