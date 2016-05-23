class TransfersController < InheritedResources::Base

  private

    def transfer_params
      params.require(:transfer).permit(:data_of_request, :percentage_shareholding, :status, :total_cost, :medicaldiagnosis, :membersh_number, :doctor_id, :hospital_id, :lab_id, :type_id)
    end
end

