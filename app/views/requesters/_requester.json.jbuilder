json.extract! requester, :id, :razao_social, :cnpj, :created_at, :updated_at
json.url requester_url(requester, format: :json)
