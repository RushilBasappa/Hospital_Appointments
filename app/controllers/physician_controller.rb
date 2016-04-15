class PhysicianController < ApplicationController
  def new
  end

  def create
    @physician = Physician.new(physician_params)
    render 'new' if !(@physician.save)
    redirect_to root_path
  end


  private
  def physician_params
    params.permit(:name, :specialization, :hospital)
  end
end
