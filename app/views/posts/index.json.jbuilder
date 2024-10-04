json.data do
  json.array! @posts, partial: "posts/post", as: :post
end
json.links do
  json.next next_page_url @posts if !@posts.last_page?
  json.prev prev_page_url @posts if !@posts.first_page?
end
