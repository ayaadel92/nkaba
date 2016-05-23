json.array!(@limits) do |limit|
  json.extract! limit, :id, :remainder_of_total, :credit_of_surgeries, :credit_medical_tests_rumors
  json.url limit_url(limit, format: :json)
end
