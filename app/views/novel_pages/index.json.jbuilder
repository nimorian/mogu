json.array!(@novel_pages) do |novel_page|
  json.extract! novel_page, :novel_id, :title, :body, :status
  json.url novel_page_url(novel_page, format: :json)
end