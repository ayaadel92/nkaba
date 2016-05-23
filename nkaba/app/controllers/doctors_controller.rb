class DoctorsController < InheritedResources::Base

  private

    def doctor_params
      params.require(:doctor).permit(:name, :degree, :specialization, :address, :phone, :governorate, :area, :price, :time_from, :time_to, :mobile, :rate)
    end
end

