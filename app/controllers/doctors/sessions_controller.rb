# frozen_string_literal: true

class Doctors::SessionsController < Devise::SessionsController
before_action :set_doctor, only: [ :show, :edit, :update, :destroy ]
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctor_url(@doctor), notice: "appointment was successfully created." }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end
  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end


  def doctor_params
    params.require(:doctor).permit(:first_name,:last_name,:avatar)
  end
end
