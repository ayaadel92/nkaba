json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :address, :phone, :governorate, :latitude, :longitudes, :area, :rate, :descriptation, :path
  json.url hospital_url(hospital, format: :json)
end
