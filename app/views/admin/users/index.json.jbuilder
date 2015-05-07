json.array!(@users) do |user|
  json.extract! user, :id, :name, :email_address, :password_digest, :is_admin
  json.url user_url(user, format: :json)
end
