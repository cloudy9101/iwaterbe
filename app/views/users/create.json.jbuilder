json.success @errors.blank?

if @errors.any?
  json.errors @errors
end
