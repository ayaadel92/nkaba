json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :degree, :specialization, :address, :phone, :governorate, :area, :price, :time_from, :time_to, :mobile, :rate
  json.url doctor_url(doctor, format: :json)
end
