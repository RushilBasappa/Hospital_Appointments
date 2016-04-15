class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :physician_id
      t.integer :patient_id
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
