json.array!(@labs) do |lab|
  json.extract! lab, :id, :name, :address, :phone, :governorate, :latitude, :longitudes, :area, :rate, :descriptation, :path, :type
  json.url lab_url(lab, format: :json)
end
