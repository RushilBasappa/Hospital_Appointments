class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :specialization
      t.string :hospital

      t.timestamps
    end
  end
end
