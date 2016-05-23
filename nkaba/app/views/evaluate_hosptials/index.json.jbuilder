json.array!(@evaluate_hosptials) do |evaluate_hosptial|
  json.extract! evaluate_hosptial, :id, :hospital_id, :membersh_number, :rate
  json.url evaluate_hosptial_url(evaluate_hosptial, format: :json)
end
