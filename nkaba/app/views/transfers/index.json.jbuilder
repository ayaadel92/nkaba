json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :data_of_request, :percentage_shareholding, :status, :total_cost, :medicaldiagnosis, :membersh_number, :doctor_id, :hospital_id, :lab_id, :type_id
  json.url transfer_url(transfer, format: :json)
end
