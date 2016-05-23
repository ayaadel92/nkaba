json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :descriptions, :path_of_image, :path_of_video, :membersh_number, :hospital_id, :lab_id, :doctor_id
  json.url complaint_url(complaint, format: :json)
end
