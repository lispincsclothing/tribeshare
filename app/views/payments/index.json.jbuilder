json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :user_id, :campaign_id
  json.url payment_url(payment, format: :json)
end
