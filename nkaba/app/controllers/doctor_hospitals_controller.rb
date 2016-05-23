class DoctorHospitalsController < InheritedResources::Base

  private

    def doctor_hospital_params
      params.require(:doctor_hospital).permit(:hospital_id, :doctor_id)
    end
end

