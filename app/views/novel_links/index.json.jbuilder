json.array!(@novel_links) do |novel_link|
  json.extract! novel_link, :page_id, :to_page_id, :name
  json.url novel_link_url(novel_link, format: :json)
end