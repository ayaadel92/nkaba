json.array!(@doctor_hospitals) do |doctor_hospital|
  json.extract! doctor_hospital, :id, :hospital_id, :doctor_id
  json.url doctor_hospital_url(doctor_hospital, format: :json)
end
