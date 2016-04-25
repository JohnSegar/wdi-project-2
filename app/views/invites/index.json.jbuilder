json.array!(@invites) do |invite|
  json.extract! invite, :id, :wedding_id, :sender_id, :receiver_id
  json.url invite_url(invite, format: :json)
end
