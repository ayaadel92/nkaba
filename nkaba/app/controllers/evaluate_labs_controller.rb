class EvaluateLabsController < InheritedResources::Base

  private

    def evaluate_lab_params
      params.require(:evaluate_lab).permit(:lab_id, :membersh_number, :rate)
    end
end

