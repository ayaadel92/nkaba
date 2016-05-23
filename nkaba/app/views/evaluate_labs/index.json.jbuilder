json.array!(@evaluate_labs) do |evaluate_lab|
  json.extract! evaluate_lab, :id, :lab_id, :membersh_number, :rate
  json.url evaluate_lab_url(evaluate_lab, format: :json)
end
