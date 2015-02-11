json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_digest, :first_name, :last_name, :address_line_1, :address_line_2, :city, :state, :zip_code
  json.url user_url(user, format: :json)
end
