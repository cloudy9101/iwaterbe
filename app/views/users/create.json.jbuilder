json.success @errors.blank?.to_s

if @errors.any?
  json.errors @errors
end
