class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :status
      t.string :session_type
      t.datetime :start_time
      t.datetime :end_time
      t.integer :appt_with_id
      t.integer :account_id
      
      t.timestamps
    end
  end
end
