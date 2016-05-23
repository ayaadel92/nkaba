class RelativesController < InheritedResources::Base

  private

    def relative_params
      params.require(:relative).permit(:number_health_care, :membersh_number, :date_of_birth, :name, :gender, :relation_type, :national_id, :limit_id)
    end
end

