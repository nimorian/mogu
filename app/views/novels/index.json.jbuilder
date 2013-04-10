json.array!(@novels) do |novel|
  json.extract! novel, :title, :context, :author
  json.url novel_url(novel, format: :json)
end