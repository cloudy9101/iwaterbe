json.total @drink_logs.sum(:volume)
json.logs @drink_logs do |log|
  json.time log.time.to_s(:iso8601)
  json.volume log.volume
end
