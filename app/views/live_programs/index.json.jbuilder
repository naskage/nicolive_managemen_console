json.array!(@live_programs) do |live_program|
  json.extract! live_program, :id, :live_id, :started_at, :user, :title, :desc, :url, :player_status, :dl_status, :flv, :mp4
  json.url live_program_url(live_program, format: :json)
end
