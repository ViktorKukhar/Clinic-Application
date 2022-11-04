class AppointmentsController < InheritedResources::Base
  before_action :set_appointment, only: [ :show, :edit, :update, :destroy ]

  def new
    @appointment = Appointment.new
  end
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_url(@appointment), notice: "appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :user_id, :date)
    end

end
