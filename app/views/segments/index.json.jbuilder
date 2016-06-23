json.array!(@segments) do |segment|
  json.extract! segment, :id, :name, :criterium_id
  json.url segment_url(segment, format: :json)
end
