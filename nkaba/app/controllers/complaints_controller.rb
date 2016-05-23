class ComplaintsController < InheritedResources::Base

  private

    def complaint_params
      params.require(:complaint).permit(:descriptions, :path_of_image, :path_of_video, :membersh_number, :hospital_id, :lab_id, :doctor_id)
    end
end

