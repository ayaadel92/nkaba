json.array!(@relatives) do |relative|
  json.extract! relative, :id, :number_health_care, :membersh_number, :date_of_birth, :name, :gender, :relation_type, :national_id, :limit_id
  json.url relative_url(relative, format: :json)
end
