json.array!(@links) do |link|
  json.extract! link, :page_id, :to_page_id, :name
  json.url link_url(link, format: :json)
end