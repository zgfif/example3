json.extract! user, :id, :name, :surname, :phone, :email, :rating, :created_at, :updated_at
json.url user_url(user, format: :json)
