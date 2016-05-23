json.array!(@types) do |type|
  json.extract! type, :id, :name_of_type
  json.url type_url(type, format: :json)
end
