class DoctorHospital < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :doctor
end
