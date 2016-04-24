json.array!(@catalagos) do |catalago|
  json.extract! catalago, :id, :vehicle, :description, :photo
  json.url catalago_url(catalago, format: :json)
end
