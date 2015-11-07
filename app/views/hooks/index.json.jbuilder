json.array!(@hooks) do |hook|
  json.extract! hook, :id, :rfid, :photon
  json.url hook_url(hook, format: :json)
end
