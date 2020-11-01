json.extract! credit_request, :id, :value, :taxa, :periods, :requester_id, :created_at, :updated_at
json.url credit_request_url(credit_request, format: :json)
