json.(@post, :id, :content)

json.user do
  json.name @post.user.name
  json.id @post.user.id
end
