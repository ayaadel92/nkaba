json.array!(@evaluate_doctors) do |evaluate_doctor|
  json.extract! evaluate_doctor, :id, :doctor_id, :membersh_number, :rate
  json.url evaluate_doctor_url(evaluate_doctor, format: :json)
end
