class TypesController < InheritedResources::Base

  private

    def type_params
      params.require(:type).permit(:name_of_type)
    end
end

