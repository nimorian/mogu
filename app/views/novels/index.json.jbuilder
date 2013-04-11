json.array!(@novels) do |novel|
  json.extract! novel, :title, :content, :author
  json.url novel_url(novel, format: :json)
end