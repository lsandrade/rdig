json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :name, :operator_id, :value
  json.url criterium_url(criterium, format: :json)
end
