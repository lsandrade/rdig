json.array!(@operators) do |operator|
  json.extract! operator, :id, :name, :type
  json.url operator_url(operator, format: :json)
end
