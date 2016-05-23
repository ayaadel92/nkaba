json.array!(@require_tests) do |require_test|
  json.extract! require_test, :id, :transfer_id, :test, :test_id
  json.url require_test_url(require_test, format: :json)
end
