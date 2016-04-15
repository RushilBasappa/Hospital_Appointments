class PatientController< ApplicationController
  def new
  end

  def create
    @patient=Patient.new(physician_params)
    render 'new' if !(@patient.save)
    redirect_to root_path
  end


  private
  def physician_params
    params.permit(:name, :mobile)
  end
end
