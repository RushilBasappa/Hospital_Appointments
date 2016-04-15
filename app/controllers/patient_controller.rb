class PatientController< ApplicationController
  def new
  end

  def create
    if (@patient = Patient.create(patient_params)).valid?
      redirect_to root_path
    else
      render 'new'
    end
  end


  private
  def patient_params
    params.require(:patient).permit(:name, :mobile)
  end
end
