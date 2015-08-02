json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :date_of_birth, :password_digest, :profile_pic
  json.url user_url(user, format: :json)
end
