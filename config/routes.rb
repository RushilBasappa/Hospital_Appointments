Rails.application.routes.draw do

  root 'appointments#index'
  resource :patients
  resource :physicians
  resource :appointments
=begin
  get '/physician/new', to: 'physician#new',as: :new_physician
  post '/physician', to: 'physician#create',as: :create_physician

  get '/patient/new', to: 'patient#new',as: :new_patient
  post '/patient', to: 'patient#create',as: :create_patient

  get '/appointments',to: 'appointments#index', as: :appointments
  get '/appointments/new',to: 'appointments#new', as: :new_appointment
  post '/appointments', to: 'appointments#create',as: :create_appointment
=end
end
