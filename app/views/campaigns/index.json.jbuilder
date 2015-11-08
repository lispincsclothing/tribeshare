json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :header, :cost, :title, :picture1, :picture2, :picture1_title, :picture2_title, :description, :expiration, :minimum_contribution, :rfid, :owner_id, :custodian_id
  json.url campaign_url(campaign, format: :json)
end
