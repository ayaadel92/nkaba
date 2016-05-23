class HospitalsController < InheritedResources::Base

  private

    def hospital_params
      params.require(:hospital).permit(:name, :address, :phone, :governorate, :latitude, :longitudes, :area, :rate, :descriptation, :path)
    end
end

