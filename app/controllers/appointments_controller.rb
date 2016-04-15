class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order("appointment_date Desc")
  end

  def new
    @appointment = Appointment.new
    @physicians = Physician.all
    @patients = Patient.all
  end

  def create
    #@patient = Patient.where(name: params[:patient]).first
    #@physician=Physician.where(name: params[:physician]).first
    #@appointment = Appointment.new(physician_id: @patient.id,patient_id: @patient.id,appointment_date: params[:date],appointment_time: params[:time])
    @appointment = Appointment.new(appointment_params)
    render 'new' if !(@appointment.save)
    redirect_to root_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:physician_id, :patient_id, :appointment_date, :appointment_time)
  end
end
