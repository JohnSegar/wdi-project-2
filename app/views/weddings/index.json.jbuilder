json.array!(@weddings) do |wedding|
  json.extract! wedding, :id, :name, :owner_id
  json.url wedding_url(wedding, format: :json)
end
