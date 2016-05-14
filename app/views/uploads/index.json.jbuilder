json.array!(@uploads) do |upload|
  json.extract! upload, :id, :live_id, :src, :dst, :status
  json.url upload_url(upload, format: :json)
end
