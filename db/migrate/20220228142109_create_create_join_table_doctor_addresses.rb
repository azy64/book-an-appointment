class CreateCreateJoinTableDoctorAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :create_join_table_doctor_addresses do |t|
      t.string :doctor
      t.string :address

      t.timestamps
    end
  end
end
