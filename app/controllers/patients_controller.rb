class PatientsController< ApplicationController
  def new
    @patient= Patient.new
  end

  def create
    @patient=Patient.new(patient_params)
    render 'new' if !(@patient.save)
    redirect_to root_path
  end


  private
  def patient_params
    params.require(:patient).permit(:name, :mobile)
  end
end
