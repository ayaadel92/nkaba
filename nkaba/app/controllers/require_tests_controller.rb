class RequireTestsController < InheritedResources::Base

  private

    def require_test_params
      params.require(:require_test).permit(:transfer_id, :test, :test_id)
    end
end

