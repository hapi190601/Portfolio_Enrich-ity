json.array! @posts do |post|
  json.id post.id
  json.user_id post.user_id
  json.genre_id post.genre_id
  json.image post.image
  json.title post.title
  json.content post.content
  json.age post.age
  json.gender post.gender
  json.desired_area post.desired_area
end
