json.array!(@jobs) do |job|
  json.extract! job, :id, :live_id, :divided, :division_num, :status
  json.url job_url(job, format: :json)
end
