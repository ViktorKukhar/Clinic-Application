class AppointmentsController < InheritedResources::Base
  before_action :set_doctor, only: [ :new ]
  before_action :set_doctor, only: [ :new ]

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def flop
    @appointment = Appointment.find(params[:id])
    @appointment.open = false
    @appointment.save
    redirect_back fallback_location: doctor_profile_path, notice: "Recommendation was successfully send and appoiment was closed."
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    # @appointment.doctor_id = @doctor
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to :action => 'flop', notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to profile_path, notice: "Appointment was successfully canceled." }
      format.json { head :no_content }
    end
end

  private

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :user_id, :date, :open, :recommendation)
    end

end
