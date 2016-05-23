class EngineersController < InheritedResources::Base

  private

    def engineer_params
      params.require(:engineer).permit(:membersh_number, :number_health_care, :national_id, :name, :address, :phone_number, :data_of_birth, :join_data, :graduation_year, :number_of_participants, :gender, :credit_card, :email, :path, :limit_id)
    end
end

