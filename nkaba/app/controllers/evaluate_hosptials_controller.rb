class EvaluateHosptialsController < InheritedResources::Base

  private

    def evaluate_hosptial_params
      params.require(:evaluate_hosptial).permit(:hospital_id, :membersh_number, :rate)
    end
end

