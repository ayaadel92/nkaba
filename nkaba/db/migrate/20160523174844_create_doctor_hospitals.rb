class CreateDoctorHospitals < ActiveRecord::Migration
  def change
    create_table :doctor_hospitals , {:id => false} do |t|
      t.references :hospital, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
    execute "ALTER TABLE doctor_hospitals ADD PRIMARY KEY (hospital_id,doctor_id);"
  end
end
