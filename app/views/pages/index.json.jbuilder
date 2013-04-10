json.array!(@pages) do |page|
  json.extract! page, :novel_id, :title, :body, :status
  json.url page_url(page, format: :json)
end