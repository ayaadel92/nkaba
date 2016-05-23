class LimitsController < InheritedResources::Base

  private

    def limit_params
      params.require(:limit).permit(:remainder_of_total, :credit_of_surgeries, :credit_medical_tests_rumors)
    end
end

