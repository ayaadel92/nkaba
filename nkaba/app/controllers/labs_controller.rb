class LabsController < InheritedResources::Base

  private

    def lab_params
      params.require(:lab).permit(:name, :address, :phone, :governorate, :latitude, :longitudes, :area, :rate, :descriptation, :path, :type)
    end
end

