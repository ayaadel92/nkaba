class EvaluateDoctorsController < InheritedResources::Base

  private

    def evaluate_doctor_params
      params.require(:evaluate_doctor).permit(:doctor_id, :membersh_number, :rate)
    end
end

